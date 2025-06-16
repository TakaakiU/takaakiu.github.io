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

### 1. Google Analytics 作成

[こちらの記事](https://sattoga.com/archives/4820)を参考に新規設定を行い、Google AnalyticsのID（`google_analytics_id`）を取得。

### 2. Google Search Console 作成

[こちらの記事](https://sattoga.com/archives/4394)を参考に新規設定を行い、Google Search ConsoleのID（`google_site_verification`）を取得。

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
