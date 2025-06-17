---
# multilingual page pair id, this must pair with translations of this page. (This name must be unique)
lng_pair: id_setup-analytics-searchconsole
title: [Jekyll(Mr.Green) + GitHub Page]Setup to Google Analytics and Google Search Console

# post specific
author: TakaakiU
# Tech or Idea
category: Tech
tags: [jekyll, github, google]
img: ":post_tech.jpg"

# publish date
date: 2025-06-16 02:54:08 +0000

# seo
#meta_modify_date: 2025-06-16 02:54:08 +0000
#meta_description: ""

# optional settings
#image_viewer_on: true
#image_lazy_loader_on: true
#on_site_search_exclude: true
#search_engine_exclude: true
published: false
---

## Setting up Google Analytics and Google Search Console with the "Mr. Green" Jekyll Theme

1.  Create a Google Analytics Property
1.  Create a Google Search Console Property
1.  Configure the "Mr. Green" Jekyll Theme
1.  Verify the Integration
1.  Submit the Sitemap in Google Search Console

### 1. Create a Google Analytics Property

Following [this article (in Japanese)](https://sattoga.com/archives/4820), I set up a new property and obtained my Google Analytics ID (`google_analytics_id`).

### 2. Create a Google Search Console Property

Following [this article (in Japanese)](https://sattoga.com/archives/4394/#toc6), I set up a new property and obtained my Google Search Console ID (`google_site_verification`).

### 3. Configure the "Mr. Green" Jekyll Theme

I modified the following YAML files.

-   **`_data/owner/en.yml` and `_data/owner/ja.yml` (2 files changed)**

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

-   **_data/conf/main.yml**

    The following section was changed.

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

    The following section was left unchanged.

    ```yml
    google:
      analytics:
        # disable this feature entirely for development or production env.
        ignore: development
      site_verification:
        # disable this feature entirely for development or production env.
        ignore: development
    ```

### 4. Verify the Integration

I confirmed the connection in both Google Analytics and Google Search Console.

### 5. Submit the Sitemap in Google Search Console

The "Mr. Green" Jekyll theme automatically generates a sitemap.
When built via GitHub Actions, it is created at `https://[your-site].github.io/assets/sitemap.xml`.

Typically, a website has a `robots.txt` file placed at the root.
For this site, it's `https://takaakiu.github.io/robots.txt`.
This text file is intended for search engine [crawlers](https://en.wikipedia.org/wiki/Web_crawler) and aims to convey the site's structure to them.

As of June 17, 2024, this site's `robots.txt` is as follows:

```txt
User-agent: *
Disallow:

Sitemap: https://takaakiu.github.io/assets/sitemap.xml
```

As you can see, the path to the sitemap is automatically reflected in `robots.txt` by the "Mr. Green" theme's functionality, as shown by the `Sitemap: https://takaakiu.github.io/assets/sitemap.xml` line.

By manually submitting this sitemap data to Google Search Console, we can request that our site be indexed приоритетно.
(This search engine process is called **indexing**.)

After indexing, the relevance and usefulness of the site are evaluated for each search keyword, and it can eventually be removed from the index if it is not deemed valuable by the search engine.

##### Failed to Submit Sitemap via the Sitemaps Feature

Following [this article (in Japanese)](https://ikmnjrd.github.io/blog/google-search-console-regist), I tried to register the sitemap in Google Search Console.
For razones desconocidas, the status immediately showed "Couldn't fetch".

Since submitting the sitemap through the Sitemaps feature failed, I decided to use the URL Inspection tool instead.

##### Registering the Sitemap with the URL Inspection Tool

I followed these steps:

> **Using the URL Inspection Tool:**
> Enter the sitemap URL `https://takaakiu.github.io/assets/sitemap.xml` into the search bar at the top of Google Search Console and run "URL Inspection".
> If it shows "URL is not on Google", click "Request Indexing". This allows you to prompt Google to crawl this URL with priority.

Immediately after running the URL Inspection tool, the status was "Submitted" and pending results.
When I checked the next day, it reported that the sitemap had been successfully indexed.

![Confirming the sitemap was indexed using the URL Inspection tool - Google Search Console](assets/img/posts/id_setup-analytics-searchconsole_Google-Search-Console-URL-is-on-Google.webp)

Since it was successfully indexed, I searched with `site:takaakiu.github.io` to check the actual Google search results.
I confirmed that one page, the homepage, was indeed indexed!

![Confirming the homepage was indexed in actual Google search results after using the URL Inspection tool in Google Search Console](assets/img/posts/id_setup-analytics-searchconsole_Google-Search-Results.webp)

I'm still not sure why I get an error when using the Sitemaps feature, but for now, since the site is indexed, I'll monitor the situation.

If you believe the sitemap should be located at `https://[site-url]/sitemap.xml` instead of `https://[site-url]/assets/sitemap.xml`, there is apparently a way to **register the sitemap plugin individually** with Jekyll. Please try that method.

In my case, this site is intended to be a portfolio, so not being indexed isn't a major issue. Therefore, I will not be registering a separate sitemap plugin.

I hope this article helps anyone facing a similar issue in a similar environment.
```
