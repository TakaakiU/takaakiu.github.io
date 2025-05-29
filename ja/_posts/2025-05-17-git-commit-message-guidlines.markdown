---
# multilingual page pair id, this must pair with translations of this page. (This name must be unique)
lng_pair: id_git-commit-message-guidlines
title: Gitコミットメッセージのガイドラインを要約！

# post specific
author: TakaakiU
category: Idea
tags: [git]
img: ":post_idea.jpg"

# publish date
date: 2025-05-17 01:23:53 +0000

# seo
#meta_modify_date: 2025-05-17 01:23:53 +0000
#meta_description: ""

# optional settings
#image_viewer_on: true
#image_lazy_loader_on: true
#on_site_search_exclude: true
#search_engine_exclude: true
#published: false
---

[Gitのコミットメッセージの書き方 (2023年ver.)](https://zenn.dev/itosho/articles/git-commit-message-2023){:target="_blank" rel="noopener noreferrer"}を頻繁に参照するので、要約した内容を手元に残したいと思い、この記事を投稿。

以下より要約した内容の始まり。

---

## 背景とモチベーション
- 数年前に発信したコミットメッセージのフォーマット記事が予想以上の反響を呼んだ。
- 当時はSubversionからGitへの移行期であり、試行錯誤の中で得た経験を元にしている。
- 時代の変化とともに開発環境や考え方が変わる中、現時点での最適な書き方を共有する意図がある。

## コミットメッセージの基本フォーマット
- **Semantic Commit Message** をベースに記述
    - フォーマット例:  
    `<Type>: <Emoji> #<Issue Number> <Title>`
- 具体例:  
    `feat: ✨ #123 ログイン機能の実装`

## 各要素の意味と推奨ルール
- **Type**
    - 各タイプごとに用途や意味が定められており、変更内容の分類が明確に分かるようにする。
    - コミットの種類を示す（例: `feat`, `fix`, `docs`, `chore`, `refactor`, `style`, `test`）
        変更がどの種類のコミットなのか一目で分かるように、短いプレフィックスを記述してください。[Semantic Commit Messages](https://gist.github.com/joshbuchea/6f47e86d2510bce28f8e7f42ae84c716){:target="_blank" rel="noopener noreferrer"} と同様のカテゴリーを使用します。

        - **chore:**  
        タスクファイルやビルド設定など、プロダクションコードに影響しない変更。

        - **docs:**  
        ドキュメントの更新や変更。

        - **feat:**  
        ユーザー向けの機能の追加や変更。

        - **fix:**  
        ユーザーに影響を与える不具合の修正。

        - **refactor:**  
        外部の動作に影響を与えずに、コード品質を向上させるためのリファクタリング。

        - **style:**  
        コードのインデントやタイプミス修正など、機能に影響を与えないフォーマットおよびスタイルの変更。

        - **test:**  
        プロダクションコードに影響を与えないテストコードの追加または変更。
- **Emoji**  
    - タイプを視覚的に表現するための絵文字  
    - gitmojiなどを参考にしながら、よりカラフルな表現を目指す。
- **Issue Number**  
    - コミットと関連するIssueへの紐付けを行い、変更の理由（Why）を把握できるようにする。
    - 必須ではないが、可能な限りIssueとの連携を推奨。
- **Title**  
    - 変更内容の概要を端的に示す。  
    - 文字数は20～30文字程度を目安に、簡潔かつ明確に記述する。

## その他の考慮事項
- **開発フローとの連携**  
    - 基本的にIssueやPull/Merge Requestを駆動する開発手法を前提としている。
    - コミットメッセージ単体で「Why」を完全に伝えるのは難しいため、IssueやPRで詳細な背景説明を行う。
- **コミットの粒度**  
    - 小さく分割されたコミットが望ましい。
    - Merge CommitやRevert Commitは、上記のルールと異なる運用をしてもよい。
- **言語の選択**  
    - チームやプロジェクトの運用に応じて、日本語または英語で記述する。
- **柔軟性と未来の変化**  
    - コミットメッセージの書き方は時代と共に進化するため、現時点での「最良の方法」は常に更新の余地がある。

## まとめ
- コミットメッセージは、開発履歴としての価値を高める重要な情報源。
- 一貫性と明確さを保ち、Issueと連動させた記述を行うことで、コード変更の意図や背景が明確になる。
- 今後も開発環境の変化に合わせ、適宜最適な方法を模索・更新していくことが大切。

---

以上が要約した内容。
