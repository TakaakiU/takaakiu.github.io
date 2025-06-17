---
# 多言語ページペアID。このIDは、このページの翻訳とペアになる必要があります。（この名前は一意でなければなりません）
lng_pair: id_setup-analytics-searchconsole
title: [Jekyll(Mr.Green) + GitHub Page]Google Analytics と Google Search Console を導入

# 投稿固有の設定
author: TakaakiU
# Tech or Idea
category: Tech
tags: [jekyll, github, google]
img: ":post_tech.jpg"

# 公開日
date: 2025-06-16 11:54:08 +0900

# SEO設定
#meta_modify_date: 2025-06-16 11:54:08 +0900
#meta_description: ""

# オプション設定
#image_viewer_on: true
#image_lazy_loader_on: true
#on_site_search_exclude: true
#search_engine_exclude: true
published: false
---

## Jekyllテーマ「Mr.Green」の設定でGoogle Analytics と Google Search Console を導入

全体の作業は下記の **5ステップ** です。

1. Google Analytics 作成
1. Google Search Console 作成
1. Jekyll「Mr.Green」の設定
1. 連携できたことを確認
1. Google Search Consoleでサイトマップを登録

### 1. Google Analytics 作成

[こちらの記事](https://sattoga.com/archives/4820)を参考に新規設定を行い、Google AnalyticsのID（`google_analytics_id`）を取得。

### 2. Google Search Console 作成

[こちらの記事](https://sattoga.com/archives/4394/#toc6)を参考に新規設定を行い、Google Search ConsoleのID（`google_site_verification`）を取得。

### 3. Jekyll「Mr.Green」の設定

下記内容でymlファイルを変更。

- _`data/owner/en.yml` と`_data/owner/ja.yml`（2ヶ所変更）

    ```diff
    # if no id is provided, this feature will be disabled.
    # make sure your environment does not match with google.analytics.ignore in _data/conf/main.yml
    -google_analytics_id: ""
    +google_analytics_id: "G-XHK6FGDW7Q"

    # there are different ways to verify web page. One is adding this as meta into html.
    # make sure you set meta.google_site_verify: true in _data/conf/main.yml
    # make sure your environment does not match with google.site_verification.ignore in _data/conf/main.yml
    -google_site_verification: ""
    +google_site_verification: "UzIBl04gqVYzgsW5OCL1y_74xfoFAx-PZ8eipPmFwh0"
    ```

- _data/conf/main.yml

    下記は変更点。

    ```diff
    ###########################################################
    #                Meta for SEO
    ###########################################################
    meta:
    # if you enabled add_hreflang in sitemap.xml, make this false. (According to SEO pros, prevent using both. )
    hreflang: true
    # add published date and modified date
    add_meta_date: false
    # please note that google does not use keywords, but other search engines may.
    keywords: true
    -google_site_verify: false
    +google_site_verify: true
    ```

    下記は変更しない。

    ```yml
    google:
    analytics:
        # disable this feature entirely for development or production env.
        ignore: development
    site_verification:
        # disable this feature entirely for development or production env.
        ignore: development
    ```

#### 4. 連携できたことを確認

Google Analytics と Google Search Console で接続を確認。

#### 5. Google Search Console でサイトマップを登録

Jekyllのテーマ「Mr. Green」ではサイトマップを自動で生成してくれる。
GitHub Actions経由でビルドすることで `https://サイト名.github.io/assets/sitemap.xml` に作成される。

基本的にWebサイトには、`robots.txt`というファイルがトップに配置されている。
本サイトだと `https://takaakiu.github.io/robots.txt`。
このテキストファイルは、検索エンジンの[クローラー](https://ja.wikipedia.org/wiki/クローラ)向けたファイルでサイトの概要を検索エンジン側に伝えることを目的としたもの。

2025年6月17日現在、本サイトの`robots.txt`は下記のとおり。

```txt
User-agent: *
Disallow:

Sitemap: https://takaakiu.github.io/assets/sitemap.xml
```

見てわかる通り、`Sitemap: https://takaakiu.github.io/assets/sitemap.xml`というようにJekyllテーマ「Mr. Green」の機能でサイトマップのパスが自動的に`robots.txt`に反映されている。

このサイトマップのデータを手動でGoogle Search Consoleに送信することで、優先的に検索結果に登録してもらいます。
（この検索エンジン側の動きを **インデックス登録** という。）

インデックス登録後は検索キーワード毎に関連性や有益性が評価されるので、最終的に検索エンジンに評価されなければインデックスから削除されることも。

- **サイトマップ送信機能を実行するもNG**

    [こちらの記事](https://ikmnjrd.github.io/blog/google-search-console-regist)を参考にGoogle Search Console でサイトマップを登録。
    原因は不明ですが実行して直ぐ、ステータスが「取得できませんでした」となる。

    Google Search Consoleのサイトマップ送信では、なぜか登録できなかったので、URL検査ツールを使用する方法で実施。

- **URL検査ツールでサイトマップを登録**

    下記の内容で実施。

    > URL検査ツールを使う:
    > Google Search Consoleの上部にある検索バーに、サイトマップのURL 「`https://takaakiu.github.io/assets/sitemap.xml`」 を入力して「URL検査」を実行。
    > 「URL は Google に登録されていません」と表示されたら、「インデックス登録をリクエスト」をクリックします。これにより、Googleに優先的にこのURLをクロールするように促すことが可能。

    URL検査ツールの実行直後は送信済みで結果待ち。
    翌日に確認すると、正常にインデックス登録できたとのこと。

    ![assets/sitemap.xmlをURL検査ツールで実行しインデックスされたことを確認 - Google Search Console](/assets/img/posts/id_setup-analytics-searchconsole_Google-Search-Console-URL-is-on-Google.webp)

    正常にインデックスされたということなので、`site:takaakiu.github.io`で検索し、実際のGoogle検索結果も確認。
    確認した結果、一つだけだがホームページがインデックスされたことを確認！

    ![Google Search ConsoleでURL検査ツール実行後、実際のGoogle検索結果においてもホームページがインデックスされたことを確認](/assets/img/posts/id_setup-analytics-searchconsole_Google-Search-Results.webp)

## さいごに

なぜ、サイトマップ送信機能で実行するとエラーになってしまうのか不明ですが、
とりあえずインデックスされたので様子を見てみようと思います。

サイトマップの配置は `https://サイトURL/assets/sitemap.xml` ではなく `https://サイトURL/sitemap.xml` が良いという方は、jekyllの機能で**サイトマップのプラグインを個別に登録**する方法があるらしいので、それでお試しください。

わたしの場合、本サイトはポートフォリオとしての運用を想定しているので、
インデックスされなくても影響はないので、個別のサイトマップ登録は行いません。

以上、この記事が類似する環境で問題解決の参考になれば幸いです。

## サイトマップの設定を見直し（2025.06.17 追記）

Google Search Console のサイトマップ送信で「取得できませんでした」になる原因を調査。

### 原因の特定：サイトマップXMLの構文の不整合

自動で生成されたXMLと、生成元となっている /assets/sitemap.xml を比較・分析した結果、2つの原因が考えられる。

#### 原因1（最有力）：hreflang用の名前空間宣言と実態の不一致

直接的な原因である可能性が非常に高い。

- 現状
    生成されたサイトマップの`<urlset>`タグには、`xmlns:xhtml="http://www.w3.org/1999/xhtml"`という記述あり。これは「このXMLファイル内では、多言語サイト用のxhtml:linkタグを使いますよ」という宣言。

    しかし、`/assets/sitemap.xml`の設定で `add_hreflang: false` となっているため、実際の`<url>`ブロックの中には、対応する`<xhtml:link ...>`タグが一つも出力されていない。
- 問題点
    **「使うと宣言しているのに、実際には使っていない」**というこの不整合な状態により「取得できません」という結果を返しているのかも。

#### 原因2（品質上の問題）：lastmod（最終更新日）の欠如

エラーの直接原因ではないかもしれないが、サイトマップの品質として修正すべき点かも。

- 現状
    生成されたサイトマップを見ると、投稿（post）には`<lastmod>`タグがあるが、固定ページ（`/tabs/about.html`など）には**`<lastmod>`タグがない**。
    これは、`/assets/sitemap.xml`の設定で `add_page_lastmod_date: falseとなっていることが要因のよう。
- 問題点
    `lastmod`は、クローラーにページの鮮度を伝えるための重要な情報らしい。
    これがないと、Googleはページの更新を効率的に検知できません。必須ではなさそうだが、対応してみる。

### `/assets/sitemap.xml`の変更内容

```diff
---
layout: xml/sitemap

# optional
# to disable this page, simply set published: false or delete this file
#published: false

# page specific settings
# this will add lastmod prop to url's
-add_page_lastmod_date: false
+add_page_lastmod_date: true
# this will add all pages lastmod prop to current date. (if date is not defined in corresponding page)
add_page_lastmod_current_date: false
add_post_thumb_pics: true
add_post_thumb_pics_title: true
add_post_thumb_pics_caption: false
-add_hreflang: false
+add_hreflang: true
#image_license_url: "https://example.com/image-license"
#changefreq: monthly
#priority: "1.0"
---

```

### 変更した結果

変更前の`https://takaakiu.github.io/assets/sitemap.xml`

```xml
This XML file does not appear to have any style information associated with it. The document tree is shown below.
<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:image="https://www.google.com/schemas/sitemap-image/1.1" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
<url>
<loc>https://takaakiu.github.io/ja/2025-06-16-setup-analytics-searchconsole</loc>
</url>
<url>
<loc>https://takaakiu.github.io/posts/2025-06-16-setup-analytics-searchconsole</loc>
</url>
<url>
<loc>https://takaakiu.github.io/ja/2025-05-18-how-to-gibo</loc>
<image:image>
<image:loc>https://takaakiu.github.io/assets/img/posts/post_tech.jpg</image:loc>
<image:title>.gitignoreを半自動で作成できる「gibo」を使ってみた</image:title>
</image:image>
</url>
<url>
<loc>https://takaakiu.github.io/posts/2025-05-18-how-to-gibo</loc>
<image:image>
<image:loc>https://takaakiu.github.io/assets/img/posts/post_tech.jpg</image:loc>
<image:title>How to Gibo!</image:title>
</image:image>
</url>
<url>
<loc>https://takaakiu.github.io/ja/2025-05-17-git-commit-message-guidlines</loc>
<image:image>
<image:loc>https://takaakiu.github.io/assets/img/posts/post_idea.jpg</image:loc>
<image:title>Gitコミットメッセージのガイドラインを要約！</image:title>
</image:image>
</url>
<url>
<loc>https://takaakiu.github.io/posts/2025-05-17-git-commit-message-guidlines</loc>
<image:image>
<image:loc>https://takaakiu.github.io/assets/img/posts/post_idea.jpg</image:loc>
<image:title>Summary of Git Commit Message Guidelines!</image:title>
</image:image>
</url>
<url>
<loc>https://takaakiu.github.io/ja/2025-05-08-hello-jekyll</loc>
<image:image>
<image:loc>https://takaakiu.github.io/assets/img/posts/post_tech.jpg</image:loc>
<image:title>GitHub Pages と Jekyll でこのサイトを立ち上げました</image:title>
</image:image>
</url>
<url>
<loc>https://takaakiu.github.io/posts/2025-05-08-hello-jekyll</loc>
<image:image>
<image:loc>https://takaakiu.github.io/assets/img/posts/post_tech.jpg</image:loc>
<image:title>Built this site using GitHub Pages and Jekyll</image:title>
</image:image>
</url>
<url>
<loc>https://takaakiu.github.io/tabs/about.html</loc>
</url>
<url>
<loc>https://takaakiu.github.io/ja/tabs/about.html</loc>
</url>
<url>
<loc>https://takaakiu.github.io/tabs/archive.html</loc>
</url>
<url>
<loc>https://takaakiu.github.io/ja/tabs/archive.html</loc>
</url>
<url>
<loc>https://takaakiu.github.io/tabs/blog/</loc>
</url>
<url>
<loc>https://takaakiu.github.io/ja/tabs/blog/</loc>
</url>
<url>
<loc>https://takaakiu.github.io/ja/</loc>
</url>
<url>
<loc>https://takaakiu.github.io/</loc>
</url>
<url>
<loc>https://takaakiu.github.io/tabs/links.html</loc>
</url>
<url>
<loc>https://takaakiu.github.io/ja/tabs/links.html</loc>
</url>
<url>
<loc>https://takaakiu.github.io/tabs/projects.html</loc>
</url>
<url>
<loc>https://takaakiu.github.io/ja/tabs/projects.html</loc>
</url>
</urlset>
```

変更後の`https://takaakiu.github.io/assets/sitemap.xml`

```xml
https://takaakiu.github.io/ja/2025-06-16-setup-analytics-searchconsole 2025-06-17T01:19:10+00:00 https://takaakiu.github.io/posts/2025-06-16-setup-analytics-searchconsole 2025-06-17T01:19:10+00:00 https://takaakiu.github.io/ja/2025-05-18-how-to-gibo 2025-05-17T16:01:02+00:00 https://takaakiu.github.io/assets/img/posts/post_tech.jpg .gitignoreを半自動で作成できる「gibo」を使ってみた https://takaakiu.github.io/posts/2025-05-18-how-to-gibo 2025-05-17T16:01:02+00:00 https://takaakiu.github.io/assets/img/posts/post_tech.jpg How to Gibo! https://takaakiu.github.io/ja/2025-05-17-git-commit-message-guidlines 2025-05-17T01:23:53+00:00 https://takaakiu.github.io/assets/img/posts/post_idea.jpg Gitコミットメッセージのガイドラインを要約！ https://takaakiu.github.io/posts/2025-05-17-git-commit-message-guidlines 2025-05-17T01:23:53+00:00 https://takaakiu.github.io/assets/img/posts/post_idea.jpg Summary of Git Commit Message Guidelines! https://takaakiu.github.io/ja/2025-05-08-hello-jekyll 2025-05-07T15:00:00+00:00 https://takaakiu.github.io/assets/img/posts/post_tech.jpg GitHub Pages と Jekyll でこのサイトを立ち上げました https://takaakiu.github.io/posts/2025-05-08-hello-jekyll 2025-05-07T15:00:00+00:00 https://takaakiu.github.io/assets/img/posts/post_tech.jpg Built this site using GitHub Pages and Jekyll https://takaakiu.github.io/tabs/about.html https://takaakiu.github.io/ja/tabs/about.html https://takaakiu.github.io/tabs/archive.html https://takaakiu.github.io/ja/tabs/archive.html https://takaakiu.github.io/tabs/blog/ https://takaakiu.github.io/ja/tabs/blog/ https://takaakiu.github.io/ja/ https://takaakiu.github.io/ https://takaakiu.github.io/tabs/links.html https://takaakiu.github.io/ja/tabs/links.html https://takaakiu.github.io/tabs/projects.html https://takaakiu.github.io/ja/tabs/projects.html
```

上記で再度、Google Search Consoleのサイトマップ送信をしたが、変わらずステータスが「取得できませんでした」となってしまった為、変更した`sitemap.xml`を切り戻す。

## 試しにサイトマップのプラグインを導入

ポートフォリオのサイトである為、対応は不要とは言ったものの気持ちが悪いので、検証してみます。

`/_config.yml`

```yml
###########################################################
# Plugins (Plugins supported by GitHub Pages https://pages.github.com/versions/)
###########################################################
plugins:
  - jekyll-paginate
  - jekyll-redirect-from
+  - jekyll-sitemap

# since GitHub Pages runs jekyll with "--safe" flag, we need to add supported plugins in here. (only github supported plugins are allowed)
whitelist:
  - jekyll-paginate
  - jekyll-redirect-from
+  - jekyll-sitemap
```
