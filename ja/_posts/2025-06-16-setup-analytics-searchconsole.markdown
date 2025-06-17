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

    ```diff yml
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

    ```diff yml
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

##### サイトマップ送信機能を実行するもNG

[こちらの記事](https://ikmnjrd.github.io/blog/google-search-console-regist)を参考にGoogle Search Console でサイトマップを登録。
原因は不明ですが実行して直ぐ、ステータスが「取得できませんでした」となる。

Google Search Consoleのサイトマップ送信では、なぜか登録できなかったので、URL検査ツールを使用する方法で実施。

##### URL検査ツールでサイトマップを登録

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

なぜ、サイトマップ送信機能で実行するとエラーになってしまうのか不明ですが、
とりあえずインデックスされたので様子を見てみようと思います。

サイトマップの配置は `https://サイトURL/assets/sitemap.xml` ではなく `https://サイトURL/sitemap.xml` が良いという方は、jekyllの機能で**サイトマップのプラグインを個別に登録**する方法があるらしいので、それでお試しください。

わたしの場合、本サイトはポートフォリオとしての運用を想定しているので、
インデックスされなくても影響はないので、個別のサイトマップ登録は行いません。


以上、この記事が類似する環境で問題解決の参考になれば幸いです。
