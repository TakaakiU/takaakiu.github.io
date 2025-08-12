---
# 多言語ページペアID。このIDは、このページの翻訳とペアになる必要があります。（この名前は一意でなければなりません）
lng_pair: id_relationship-between-kramdown-and-gfm-and-comparison-table
title: KramdownとGFMの関連性の説明とできること・できないことの比較表

# 投稿固有の設定
author: TakaakiU
# Tech or Idea
category: Tech
tags: [jekyll, markdown]
img: ":post_tech.jpg"

# 公開日
date: 2025-08-12 12:04:51 +0900

# SEO設定
#meta_modify_date: 2025-08-12 12:04:51 +0900
#meta_description: ""

# オプション設定
#image_viewer_on: true
#image_lazy_loader_on: true
#on_site_search_exclude: true
#search_engine_exclude: true
published: false
---

## GitHubのGFM と JekyllのKramdown の関連性

KramdownとGFMは、それぞれがMarkdownの基本仕様を拡張した**独立した「方言（フレーバー）」**。

- **GFM (GitHub Flavored Markdown)** は、GitHubがドキュメント作成を便利にするために定義した**「書き方のルール」**であり、Webにおける事実上の標準（デファクトスタンダード）です。
- **Kramdown** は、Jekyllなどが採用するRuby製の高性能な**「変換ソフトウェア（パーサー）」**であり、それ自体がHTMLの属性指定や脚注など、独自の強力な拡張機能を持っています。

両者の関係は、**Kramdownが後からGFMの便利な機能（テーブル、タスクリスト等）を取り込んでサポートした**というもの。そのため、KramdownはGFMの構文を高い互換性で解釈可能だが、逆にGFM（GitHub）がKramdownの独自構文を解釈することはできない。

---

### 機能比較表：Kramdown vs GFM

| 機能 | GFM (GitHub Flavored Markdown) | Kramdown | 備考 |
| :--- | :--- | :--- | :--- |
| **基本構文** | | | |
| 見出し、リスト、リンク等 | ✅ **対応** | ✅ **対応** | CommonMark仕様に準拠 |
| **GFMの主要拡張機能** | | | |
| テーブル（表） | ✅ **対応** | ✅ **対応** | Kramdownは`input: GFM`設定で完全対応 |
| タスクリスト (`- [x]`) | ✅ **対応** | ✅ **対応** | 同上 |
| 打ち消し線 (`~~text~~`) | ✅ **対応** | ✅ **対応** | 同上 |
| コードのシンタックスハイライト | ✅ **対応** | ✅ **対応** | KramdownはRougeなどのハイライターと連携 |
| 絵文字 (`:tada:`) | ✅ **対応** | ❌ **非対応** | Kramdown自体には絵文字変換機能はない[^1] |
| 自動リンク (`#123`, `@user`) | ✅ **対応** | ❌ **非対応** | これはGitHubのプラットフォーム機能 |
| **Kramdownの主要拡張機能** | | | |
| **属性の直接指定** `{: }` | ❌ **非対応** | ✅ **対応** | **Kramdown最大の特徴。** `target="_blank"`などを付与可能 |
| 脚注 `[^1]` | ✅ **対応**[^2] | ✅ **対応** | 学術文書などで強力 |
| 定義リスト | ❌ **非対応** | ✅ **対応** | 用語と説明のペアを記述するのに便利 |
| 目次の自動生成 `{:toc}` | ❌ **非対応** | ✅ **対応** | 長文ドキュメントで非常に役立つ |
| ブロックレベルの属性指定 | ❌ **非対応** | ✅ **対応** | コードブロックや引用にIDやクラスを付与できる |

[^1]: Jekyll環境では `jekyll-emoji` などのプラグインを使えばKramdownでも絵文字が利用可能になります。
[^2]: GFMも脚注記法をサポートするようになったが、後発の機能。元々はKramdownなどが先行していた。

### 使い分けのポイント

- **GitHub上で完結するドキュメント（README等）を書く場合**
    - **GFM**の仕様に従って書くのが正解です。Kramdownの独自記法は使えません。
- **Jekyllでウェブサイトを構築する場合**
    - **Kramdown**の能力を最大限に活用できます。GFMの便利な記法（テーブル等）を使いつつ、必要に応じてKramdown独自の機能（属性指定、脚注、TOC等）を組み合わせることで、非常に表現力豊かなコンテンツを作成できます。
