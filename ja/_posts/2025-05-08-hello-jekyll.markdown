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

以前から気になっていた**Jekyll**（ジキル）と**GitHub Pages**（github.io）を使って、このWebサイトを立ち上げました。
Jekyllのテーマは、多言語対応している「**[Mr. Green](https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme)**」というテーマを使わさせて頂きました。

テーマ開発者の方がSNSで丁寧に手順を紹介してくれているので、思ったよりも簡単に作業が完了。わたし個人の備忘録を兼ねて実施した事を共有します。

## 概要

### GitHub Pages

> You can use GitHub Pages to host a website about yourself, your organization, or your project directly from a repository on GitHub.
>
> 引用元：[What is GitHub Pages?](https://docs.github.com/en/pages/getting-started-with-github-pages/what-is-github-pages) より

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
> 引用元：[GitHub Pages limits](https://docs.github.com/en/pages/getting-started-with-github-pages/github-pages-limits)

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
> 引用元：[GitHub Pages limits](https://docs.github.com/en/pages/getting-started-with-github-pages/github-pages-limits)

<details>

<summary>原文：GitHub Pages limits | GitHub公式</summary>

```
## Usage limits

GitHub Pages is not intended for or allowed to be used as a free web-hosting service to run your online business, e-commerce site, or any other website that is primarily directed at either facilitating commercial transactions or providing commercial software as a service (SaaS). GitHub Pages sites shouldn't be used for sensitive transactions like sending passwords or credit card numbers.

In addition, your use of GitHub Pages is subject to the [GitHub Terms of Service](https://docs.github.com/en/site-policy/github-terms/github-terms-of-service), including the restrictions on get-rich-quick schemes, sexually obscene content, and violent or threatening content or activity.

GitHub Pages sites are subject to the following usage limits:

- You can only create one user or organization site for each account on GitHub.

- GitHub Pages source repositories have a recommended limit of 1 GB. For more information, see [About large files on GitHub](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-large-files-on-github#file-and-repository-size-limitations).

- Published GitHub Pages sites may be no larger than 1 GB.

- GitHub Pages deployments will timeout if they take longer than 10 minutes.

- GitHub Pages sites have a soft bandwidth limit of 100 GB per month.

- GitHub Pages sites have a soft limit of 10 builds per hour. This limit does not apply if you build and publish your site with a custom GitHub Actions workflow.

- In order to provide consistent quality of service for all GitHub Pages sites, rate limits may apply. These rate limits are not intended to interfere with legitimate uses of GitHub Pages. If your request triggers rate limiting, you will receive an appropriate response with an HTTP status code of `429`, along with an informative HTML body.

If your site exceeds these usage quotas, we may not be able to serve your site, or you may receive a polite email from GitHub Support suggesting strategies for reducing your site's impact on our servers, including putting a third-party content distribution network (CDN) in front of your site, making use of other GitHub features such as releases, or moving to a different hosting service that might better fit your needs.
```

</details>

いろいろ制限はありますが、個人の簡易なサイトでは問題なく運用できそうです。

### Jekyll

[Jekyll](https://jekyllrb.com/)。読み方は「ジキル」です。

> Jekyllは2008年にTom Preston-Wernerによって初めてリリースされました。その後、GitHubの従業員であるParker MooreがJekyllを引き継ぎ、Jekyll 1のリリースを主導しました。
> 
> Jekyllは、静的ウェブサイトへのWeb開発のトレンドのきっかけとなりました。2017年には、GitHubでの採用が大きな要因となり、Jekyllは最も人気のある静的サイトジェネレーターにランクインしました。GitHub上のJekyllプロジェクトは継続的に更新されており、バグ修正のためのリリースも行われています。
> 
> 引用元：[Jekyll - Wikipedia](https://en.wikipedia.org/wiki/Jekyll_(software)#History)

[こちら](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll)にもある通り、GitHub公式がJekyllを使ったサイトの立ち上げ方を公開。

#### Jekyll テーマ「Mr.Green」

Jekyllには数多くのテーマがあります。その中で多言語対応していて、見た目もキレイなテーマ「[Mr. Green](https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme)」を使っています。

たしか「[Jekyll ＋ テーマ ＋ 日本語対応 ＋ 多言語](https://www.google.com/search?q=Jekyll+テーマ+日本語対応+多言語)」などのキーワードで公式の記事が上位にありたどり着いたと思います。

また、[この方のサイト](https://blog.ingen084.net/posts/2023-06-18-renew-again)をみて、見やすい良いテーマだなと思いました。

他のテーマを探したい場合は[こちらの公式記事](https://jekyllrb.com/docs/themes/)から色々なテーマを探すことができます。
必要な機能がある場合は、検索するなり生成AIに質問するになりした方が角度の高い結果が得られるでしょう。


## 前提条件

- GitHubアカウント作成済み
- インターネット環境に接続していること

## 構築手順

1. Fork the repo.

1. Edit _config.yml and change `url` like below and push changes.

    ```
    url: "https://your_github_user_name.github.io"
    ```

    → [実際に設定した`_config.yml`](https://github.com/takaakiu/takaakiu.github.io/blob/main/_config.yml)

1. Rename the repo name to `your_github_user_name.github.io`.

1. Check Deploy status `Actions` tab on the repo.

1. When it's turned to green, your site is up and running at
    `https://your_github_user_name.github.io`.

1. 自身のリポジトリを修正しカスタマイズ

### カスタマイズ内容

元のリポジトリと自身のリポジトリの比較結果を表示し、対応方法を確認する。
★対応中。

## 参考文献

[GitHub Pagesを使って約10分で個人のWebサイトやブログを公開しよう！｜Mr.Green公式YouTube](https://youtu.be/Sd_KBUH5Lk4?si=6WrDanzMG_TiYmhk)

[Jekyllテーマ「Mr.Green」を使用して GitHub Pages サイトを作成｜Mr.Green公式](https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme/blob/main/README.md#github-pages)
