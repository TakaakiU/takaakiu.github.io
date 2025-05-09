---
# multilingual page pair id, this must pair with translations of this page. (This name must be unique)
lng_pair: id_Hello_Jekyll
title: Jekyll と GitHub Pages でこのサイトを立ち上げました

# post specific
# if not specified, .name will be used from _data/owner/[language].yml
author: TakaakiU
# multiple category is not supported
category: blog
# multiple tag entries are possible
tags: [jekyll, github]
# thumbnail image for post
img: ":post_pic1.jpg"
# disable comments on this page
#comments_disable: true

# publish date
date: 2025-05-08 00:00:00 +0900

# seo
# if not specified, date will be used.
#meta_modify_date: 2022-02-10 08:11:06 +0900
# check the meta_common_description in _data/owner/[language].yml
meta_description: "I built a personal website using GitHub Pages, Jekyll, and the Jekyll theme Mr. Green. I'll share the site along with a simple overview of the steps I took to create it."

# optional
# please use the "image_viewer_on" below to enable image viewer for individual pages or posts (_posts/ or [language]/_posts folders).
# image viewer can be enabled or disabled for all posts using the "image_viewer_posts: true" setting in _data/conf/main.yml.
#image_viewer_on: true
# please use the "image_lazy_loader_on" below to enable image lazy loader for individual pages or posts (_posts/ or [language]/_posts folders).
# image lazy loader can be enabled or disabled for all posts using the "image_lazy_loader_posts: true" setting in _data/conf/main.yml.
#image_lazy_loader_on: true
# exclude from on site search
#on_site_search_exclude: true
# exclude from search engines
#search_engine_exclude: true
# to disable this page, simply set published: false or delete this file
# published: false
---

はじめまして、 [TakaakiU](https://github.com/takaakiu) です。

以前から気になっていた**Jekyll**（ジキル）と**GitHub Pages**（github.io）を使ってWebサイトを立ち上げました。
Jekyllのテーマは、多言語対応している「**[Mr. Green](https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme)**」というテーマを使わさせて頂きました。

テーマ開発者の方がSNSで丁寧に手順を紹介してくれているので、思ったよりも簡単に作業が完了。わたし個人の備忘録を兼ねて簡単に実施した事を共有します。

## 概要

### GitHub Pages

> You can use GitHub Pages to host a website about yourself, your organization, or your project directly from a repository on GitHub.
>
> 引用元：[What is GitHub Pages?](https://docs.github.com/ja/pages/getting-started-with-github-pages/what-is-github-pages) より

GitHub公式では上記のように記載。
つまり、「GitHub Pagesを使用すると、GitHub上のリポジトリを元にしてWebサイトを公開できる。」

しかも**無料プランでも費用が発生する事なく利用可能**。GitHubさん、ふとっぱら。

#### 使用制限

> GitHub Pages sites are subject to the following usage limits:
>
> - You can only create one user or organization site for each account on GitHub.
> - GitHub Pages source repositories have a recommended limit of 1 GB. For more information, see [About large files on GitHub](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-large-files-on-github#file-and-repository-size-limitations).
> - Published GitHub Pages sites may be no larger than 1 GB.
> - GitHub Pages deployments will timeout if they take longer than 10 minutes.
> - GitHub Pages sites have a soft bandwidth limit of 100 GB per month.
> - GitHub Pages sites have a soft limit of 10 builds per hour. This limit does not apply if you build and publish your site with a custom GitHub Actions workflow.
> - In order to provide consistent quality of service for all GitHub Pages sites, rate limits may apply. These rate limits are not intended to interfere with legitimate uses of GitHub Pages. If your request triggers rate limiting, you will receive an appropriate response with an HTTP status code of 429, along with an informative HTML body.
>
> 引用元：[GitHub Pages limits](https://docs.github.com/ja/pages/getting-started-with-github-pages/github-pages-limits)

翻訳すると下記のとおり。

> GitHub Pagesのサイトには、以下の使用制限が適用されます：
>
> - **ユーザーまたは組織サイトの制限**  
>   各GitHubアカウントにつき、**1つのユーザーまたは組織サイト**のみ作成できます。
>
> - **リポジトリの推奨サイズ制限**  
>   GitHub Pagesのソースリポジトリの**推奨サイズ上限は1GB**です。詳細は[GitHubの大容量ファイルについて](https://docs.github.com/en/github/managing-large-files/about-large-files-on-github)をご覧ください。
>
> - **公開サイトのサイズ制限**  
>   公開されたGitHub Pagesのサイトは**最大1GB**のサイズ制限があります。
>
> - **デプロイのタイムアウト**  
>   GitHub Pagesのデプロイは**10分以上**かかるとタイムアウトします。
>
> - **帯域幅のソフトリミット**  
>   GitHub Pagesのサイトは**月間100GB**の帯域幅制限があります。
>
> - **ビルドのソフトリミット**  
>   GitHub Pagesのサイトは**1時間あたり最大10回**のビルド制限があります。  
>   ただし、GitHub Actionsを使用してカスタムワークフローでビルド・公開する場合、この制限は適用されません。
>
> - **レート制限について**  
>   すべてのGitHub Pagesサイトに一貫した品質のサービスを提供するため、レート制限が適用される場合があります。  
>   これらの制限は**正当な利用を妨げるものではありません**。  
>   もしリクエストがレート制限に引っかかった場合は、HTTPステータスコード**429**と共に、説明が記載されたHTMLレスポンスが返されます。
>
> 引用元：[GitHub Pages limits](https://docs.github.com/ja/pages/getting-started-with-github-pages/github-pages-limits)

いろいろ制限はありますが、個人の簡易なサイトでは問題なく運用できそうです。

### Jekyll

★ここを書いています。

#### Jekyll テーマ「Mr.Green」

## 前提条件

- GitHubアカウント作成済み
- インターネット環境に接続していること

## 

## 参考文献

[Jekyllテーマ「Mr.Green」を使用して GitHub Pages サイトを作成｜Mr.Green公式](https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme/blob/main/README.md#github-pages)

