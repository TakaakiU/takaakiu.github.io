---
# 多言語ページペアID。このIDは、このページの翻訳とペアになる必要があります。（この名前は一意でなければなりません）
lng_pair: id_converts-text-to-quotation-marks
title: Create an extension for VS Code that converts text to quotation marks.

# 投稿固有の設定
author: TakaakiU
# Tech or Idea
category: xxxx
tags: [xxxx, xxxx]
img: ":post_xxxx.jpg"

# 公開日
date: 2025-08-07 09:27:08 +0900

# SEO設定
#meta_modify_date: 2025-08-07 09:27:08 +0900
#meta_description: ""

# オプション設定
#image_viewer_on: true
#image_lazy_loader_on: true
#on_site_search_exclude: true
#search_engine_exclude: true
published: false
---

# VS Codeで引用表示する場合の拡張機能を作ってみる

既存の拡張機能を参考に、「引用追加時に空行は `>` とする」「引用削除時に `>` も対象とする」という2つの要件を満たすように、ご提示の `extension.js` を修正します。

変更点は主に2つです。
1.  引用の有無を判定する**正規表現**を修正します。
2.  引用を追加する際のロジックに、**空行かどうかの判定**を追加します。

以下が修正後の完全なコードです。

### 修正後の `extension.js`

```javascript
const vscode = require('vscode');

function activate(context) {
	let disposable = vscode.commands.registerCommand('mdBlockquoteToggler.toggle', function () {
		let editor = vscode.window.activeTextEditor;
	  
		if (editor) {
		  let document = editor.document;
		  let selections = editor.selections;
	  
		  editor.edit(editBuilder => {
			for (let selection of selections) {
			  let startLineNumber = selection.start.line;
			  let endLineNumber = selection.end.line;
			  let startLine = document.lineAt(startLineNumber);
			  let endLine = document.lineAt(endLineNumber);
			  
			  // 【変更点 1】正規表現を修正
			  // 「> 」または「>」で始まる行にマッチするように「^> ?」に変更
			  // これにより「>」だけの行も引用解除の対象になる
			  let blockquoteRegex = /^> ?/;

			  let startPos = startLine.range.start;
			  let endPos = endLine.range.end;
	  
			  if (startLineNumber == endLineNumber && selection.isEmpty) {
				// No selection. Treat as if we've selected the entire line.
				let lineText = startLine.text;
				let lineRange = startLine.range;
				let modifiedText;

				if (blockquoteRegex.test(lineText)) {
					modifiedText = lineText.replace(blockquoteRegex, '');
				} else {
					// 【変更点 2】空行かどうかの判定を追加
					if (lineText.trim() === '') {
						// 空行の場合は「>」だけを追加
						modifiedText = '>';
					} else {
						// 文字がある行は「> 」を追加
						modifiedText = '> ' + lineText;
					}
				}
	  
				editBuilder.replace(lineRange, modifiedText);
	  
			  } else {
				// Selection present, modify the text for all lines in selection.
				let modifiedText = '';
	  
				for (let i = startLineNumber; i <= endLineNumber; i++) {
				  let line = document.lineAt(i);
				  let lineText = line.text;

				  if (blockquoteRegex.test(lineText)) {
					lineText = lineText.replace(blockquoteRegex, '');
				  } else {
					// 【変更点 2】空行かどうかの判定を追加
					if (lineText.trim() === '') {
						// 空行の場合は「>」だけを追加
						lineText = '>';
					} else {
						// 文字がある行は「> 」を追加
						lineText = '> ' + lineText;
					}
				  }
				  
				  modifiedText += lineText + (i == endLineNumber ? '' : '\n');
				  startPos = startPos.isBefore(lineRange.start) ? startPos : lineRange.start;
				  endPos = endPos.isAfter(lineRange.end) ? endPos : lineRange.end;
				}
	  
				editBuilder.replace(new vscode.Range(startPos, endPos), modifiedText);
			  }
			}
		  });
		}
	  });

  context.subscriptions.push(disposable);
}

exports.activate = activate;

function deactivate() { }

module.exports = {
  activate,
  deactivate
}
```

### 変更点の詳細な解説

#### 変更点1：正規表現の修正

**修正前:**
`let blockquoteRegex = /^> /;`
これでは `> ` で始まる行にしかマッチしませんでした。

**修正後:**
`let blockquoteRegex = /^> ?/;`
これは「行頭の `>` の後に、スペースが**0個または1個**ある」という意味の正規表現です。
これにより、
*   `> Hello` (スペースあり)
*   `>Hello` (スペースなし)
*   `>` (スペースなし、空行の引用)
のいずれのパターンにもマッチするようになります。この修正だけで、**引用解除の際の要件は満たされます。**

#### 変更点2：空行かどうかの判定ロジックを追加

引用を追加する `else` ブロックの中に、条件分岐を追加しました。

**修正前:**
```javascript
} else {
  lineText = '> ' + lineText;
}
```

**修正後:**
```javascript
} else {
  // lineText.trim() === '' で、スペースやタブだけの行も空行として判定
  if (lineText.trim() === '') { 
    // 空行だった場合は「>」だけを代入
    lineText = '>'; 
  } else {
    // 文字が含まれる行は、従来通り「> 」を先頭に追加
    lineText = '> ' + lineText; 
  }
}
```
このロジックを、「選択範囲がない場合」と「選択範囲がある場合」の両方の `else` ブロックに適用しています。

以上の修正により、ご希望の動作が実現できます。

---

## これ以外にも引用表示で追加した方がよい機能

Markdownでの引用を多用するユーザーにとって「かゆいところに手が届く」ような機能をレベル別に考えてみました。

---

### 提案1：引用レベル（ネスト）の操作機能

現在の機能は `>` の付け外しのみですが、メールの返信や複雑な引用では `>>` や `>>>` といった深い階層（ネスト）を使います。これを簡単にする機能です。

#### 機能案
1.  **引用を深くする (インデント)**
    *   選択範囲の各行の先頭に `>` を1つ追加する。
    *   `text` → `> text`
    *   `> text` → `>> text`
2.  **引用を浅くする (アウトデント)**
    *   選択範囲の各行の先頭から `>` を1つ削除する。
    *   `>> text` → `> text`
    *   `> text` → `text`

#### なぜ便利か？
`Tab`キーでインデント、`Shift+Tab`でアウトデントするような感覚で、引用の階層を直感的に操作できます。これにより、文章の構造を整理するのが非常に楽になります。

#### コードのイメージ（追加コマンド部分）
```javascript
// 「引用を深くする」コマンドの登録
vscode.commands.registerCommand('mdBlockquoteToggler.incrementLevel', () => {
    // 選択範囲の各行の先頭に'>'を追加するロジック
});

// 「引用を浅くする」コマンドの登録
vscode.commands.registerCommand('mdBlockquoteToggler.decrementLevel', () => {
    // 選択範囲の各行の先頭から'>'を1つ削除するロジック（正規表現 /^> ?/ を使う）
});
```

---

### 提案2：挙動をカスタマイズできる設定項目

ユーザーの好みやプロジェクトのルールは様々です。ハードコーディングではなく、VSCodeの`settings.json`で挙動を変えられるようにします。

#### 設定案
1.  **空行の扱い (`emptyLineStyle`)**
    *   `"quote"`: `>` を付ける（現在の仕様）
    *   `"preserve"`: 空行のまま変更しない
    *   `"remove"`: 引用追加時に空行を削除する
2.  **引用符の後のスペース (`addSpaceAfterMarker`)**
    *   `true`: `> ` のようにスペースを入れる（デフォルト）
    *   `false`: `>` のようにスペースを入れない

#### なぜ便利か？
ユーザーが自分のスタイルに合わせて拡張機能の動作を最適化できます。これにより、より多くのユーザーにとって使いやすいツールになります。

#### コードのイメージ（設定の取得部分）
```javascript
// settings.jsonから設定値を取得
const config = vscode.workspace.getConfiguration('mdBlockquoteToggler');
const addSpace = config.get('addSpaceAfterMarker', true); // デフォルトはtrue
const quoteChar = addSpace ? '> ' : '>';

// ...ロジックの中で quoteChar を使う...
if (lineText.trim() === '') {
    // 空行の扱いの設定に応じて処理を分岐
} else {
    modifiedText = quoteChar + lineText;
}
```

---

### 提案3：「トグル」以外の専用コマンドを追加

現在の「トグル（付け外し）」は便利ですが、常に「付けたいだけ」または「外したいだけ」という明確な意図がある場合もあります。

#### 機能案
*   **`Add Quote` コマンド:** 選択範囲が引用されているかどうかにかかわらず、強制的に引用を追加する。
*   **`Remove Quote` コマンド:** 選択範囲が引用されている場合のみ、引用を解除する。

#### なぜ便利か？
ユーザーは自分のワークフローに合わせて、より具体的なコマンドにショートカットキーを割り当てることができます。例えば、「このキーを押したら必ず引用が追加される」という安心感が生まれます。

---

### まとめ

| 提案レベル | 機能概要 | ユーザーにとってのメリット |
| :--- | :--- | :--- |
| **基本（最優先）** | **引用レベルの操作** (`>>`, `>>>`の追加/削除) | 複雑な引用の編集が劇的に楽になる |
| **中級** | **挙動のカスタマイズ** (空行やスペースの扱い) | ユーザー個人の好みに合わせた最適な動作を実現できる |
| **上級** | **専用コマンドの追加** (`Add`/`Remove`) | より柔軟なキーボードショートカットの設定が可能になる |

まずは**提案1の「引用レベルの操作」**から実装を検討するのが、最も多くのユーザーに喜ばれ、機能としても大きな進化を感じられそう。
