---
# multilingual page pair id, this must pair with translations of this page. (This name must be unique)
lng_pair: id_setup-analytics-searchconsole
title: "[Jekyll(Mr.Green) + GitHub Page]Setup to Google Analytics and Google Search Console"

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
meta_description: "Setting up Google Analytics and Google Search Console with the Jekyll Theme [Mr.Green]. The entire process consists of the following 5 steps."

# optional settings
#image_viewer_on: true
#image_lazy_loader_on: true
#on_site_search_exclude: true
#search_engine_exclude: true
#published: false
---

## Setting up Google Analytics and Google Search Console with the Jekyll Theme "Mr.Green"

The entire process consists of the following **5 steps**:

1. Create a Google Analytics property
1. Create a Google Search Console property
1. Configure the Jekyll "Mr.Green" theme
1. Confirm the integration
1. Submit the sitemap in Google Search Console

### 1. Create a Google Analytics Property

Following [this article (in Japanese)](https://sattoga.com/archives/4820), set up a new property and obtain your Google Analytics ID (`google_analytics_id`).

### 2. Create a Google Search Console Property

Following [this article (in Japanese)](https://sattoga.com/archives/4394/#toc6), set up a new property and obtain your Google Search Console ID (`google_site_verification`).

### 3. Configure the Jekyll "Mr.Green" Theme

Modify the YML files as shown below.

- `_data/owner/en.yml` and `_data/owner/ja.yml` (Change in 2 places)

  ```diff
  # if no id is provided, this feature will be disabled.
  # make sure your environment does not match with google.analytics.ignore in _data/conf/main.yml
  -google_analytics_id: ""
  +google_analytics_id: "google_analytics_id"
  
  # there are different ways to verify web page. One is adding this as meta into html.
  # make sure you set meta.google_site_verify: true in _data/conf/main.yml
  # make sure your environment does not match with google.site_verification.ignore in _data/conf/main.yml
  -google_site_verification: ""
  +google_site_verification: "google_site_verification"
  ```

- `_data/conf/main.yml`

  The following are the changes to be made.
  
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
  
  Do not change the following.
  
  ```yml
  google:
  analytics:
      # disable this feature entirely for development or production env.
      ignore: development
  site_verification:
      # disable this feature entirely for development or production env.
      ignore: development
  ```

### 4. Confirm the Integration

Verify the connection in Google Analytics and Google Search Console.

### 5. Submit the Sitemap in Google Search Console

The Jekyll theme "Mr. Green" automatically generates a sitemap.
By building the site via GitHub Actions, it is created at `https://your-site.github.io/assets/sitemap.xml`.

Typically, websites have a file named `robots.txt` in the root directory. For this site, it's at `https://takaakiu.github.io/robots.txt`. This text file is intended for search engine [crawlers](https://en.wikipedia.org/wiki/Web_crawler) and aims to communicate the site's structure to the search engine.

As of June 17, 2025, this site's `robots.txt` is as follows:

```txt
User-agent: *
Disallow:

Sitemap: https://takaakiu.github.io/assets/sitemap.xml
```

As you can see, the path to the sitemap, `Sitemap: https://takaakiu.github.io/assets/sitemap.xml`, is automatically reflected in `robots.txt` by the Jekyll "Mr. Green" theme's functionality.

By manually submitting this sitemap data to Google Search Console, we can request that our site be registered in search results with priority. (This search engine process is called **indexing**.)

After indexing, pages are evaluated for relevance and usefulness for each search keyword, and they may eventually be removed from the index if they are not well-regarded by the search engine.

- **Sitemap submission fails**

    Following [this article (in Japanese)](https://ikmnjrd.github.io/blog/google-search-console-regist), I tried to submit the sitemap in Google Search Console. The cause is unknown, but immediately after submission, the status became "Couldn't fetch."

    Since the sitemap submission in Google Search Console failed, I used the URL Inspection tool instead.

    1. Submitting the sitemap with `assets/sitemap.xml`
        ![Submitting the sitemap with `assets/sitemap.xml` - Google Search Console](/assets/img/posts/id_setup-analytics-searchconsole_GoogleSearchConsole_SitemapSend001.webp)
    2. Confirmation message that the sitemap was submitted
        ![Confirmation message that the sitemap was submitted - Google Search Console](/assets/img/posts/id_setup-analytics-searchconsole_GoogleSearchConsole_SitemapSend002.webp)
    3. "Couldn't fetch" error occurs
        ![Status "Couldn't fetch" error - Google Search Console](/assets/img/posts/id_setup-analytics-searchconsole_GoogleSearchConsole_SitemapSend003.webp)
        Below is the detail view after clicking on the submitted sitemap entry.
        ![Status "Couldn't fetch" error detail - Google Search Console](/assets/img/posts/id_setup-analytics-searchconsole_GoogleSearchConsole_SitemapSend004.webp)

- **Registering the Sitemap with the URL Inspection Tool**

    I performed the following steps:

    > Using the URL Inspection tool:
    > In the top search bar of Google Search Console, enter the sitemap URL `https://takaakiu.github.io/assets/sitemap.xml` and run "URL Inspection."
    > If it says "URL is not on Google," click "Request Indexing." This prompts Google to crawl this URL with priority.

    Immediately after running the URL Inspection tool, the status was "submitted and pending."
    When I checked the next day, it showed that the URL had been successfully indexed.

    ![Confirming that assets/sitemap.xml was indexed via the URL Inspection tool - Google Search Console](/assets/img/posts/id_setup-analytics-searchconsole_Google-Search-Console-URL-is-on-Google.webp)

    Since it was successfully indexed, I searched `site:takaakiu.github.io` to check the actual Google search results.
    I confirmed that one page, the homepage, was indeed indexed!

    ![After using the URL Inspection tool, confirming the homepage is indexed in actual Google search results](/assets/img/posts/id_setup-analytics-searchconsole_Google-Search-Results.webp)

## In Conclusion

Although it's unclear why the sitemap submission feature results in an error, the site has been indexed for now, so I'll monitor the situation.

For those who prefer the sitemap to be located at `https://your-site-url/sitemap.xml` instead of `https://your-site-url/assets/sitemap.xml`, there is apparently a way to do this by **installing a separate sitemap plugin** for Jekyll.

In my case, I intend to use this site as a portfolio, so it's not a major issue even if it isn't indexed. Therefore, I will not be setting up a custom sitemap.

I hope this article helps others in a similar environment to solve their problems.

## Trying a Different Approach to Solve the Issue (Update: 2025.06.17)

### Reviewing the Sitemap Settings

I investigated the cause of the "Couldn't fetch" error in Google Search Console's sitemap submission.

#### Identifying the Cause: Inconsistency in the Sitemap XML Syntax

After comparing and analyzing the automatically generated XML and its source, `/assets/sitemap.xml`, I've identified two possible causes.

- **Cause 1 (Most likely): Mismatch between hreflang namespace declaration and its actual use**

  This is very likely the direct cause.
  
  - **Current State:** The `<urlset>` tag in the generated sitemap includes `xmlns:xhtml="http://www.w3.org/1999/xhtml"`. This declares that `xhtml:link` tags for multilingual sites will be used within this XML file.
  
  - However, because `add_hreflang: false` is set in the `/assets/sitemap.xml` configuration, no corresponding `<xhtml:link ...>` tags are actually output within the `<url>` blocks.
  
  - **The Problem:** This inconsistency—**declaring that something will be used but not actually using it**—might be causing Google to return the "Couldn't fetch" error.

- **Cause 2 (A quality issue): Lack of `lastmod` (last modified date)**

  This might not be the direct cause of the error, but it's a point that should be fixed for sitemap quality.
  
  - **Current State:** Looking at the generated sitemap, posts have a `<lastmod>` tag, but static pages (like `/tabs/about.html`) **do not have a `<lastmod>` tag**. This seems to be due to the `add_page_lastmod_date: false` setting in `/assets/sitemap.xml`.
  
  - **The Problem:** Apparently, `lastmod` is crucial information for telling crawlers how fresh a page is. Without it, Google cannot efficiently detect page updates. While it may not be mandatory, I will try addressing it.

#### Changes to `/assets/sitemap.xml`

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

#### Result of the Changes

`https://takaakiu.github.io/assets/sitemap.xml` before changes:

```xml
<?xml version="1.0" encoding="UTF-8"?>
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
  <url><loc>https://takaakiu.github.io/tabs/about.html</loc></url>
  <url><loc>https://takaakiu.github.io/ja/tabs/about.html</loc></url>
  <url><loc>https://takaakiu.github.io/tabs/archive.html</loc></url>
  <url><loc>https://takaakiu.github.io/ja/tabs/archive.html</loc></url>
  <url><loc>https://takaakiu.github.io/tabs/blog/</loc></url>
  <url><loc>https://takaakiu.github.io/ja/tabs/blog/</loc></url>
  <url><loc>https://takaakiu.github.io/ja/</loc></url>
  <url><loc>https://takaakiu.github.io/</loc></url>
  <url><loc>https://takaakiu.github.io/tabs/links.html</loc></url>
  <url><loc>https://takaakiu.github.io/ja/tabs/links.html</loc></url>
  <url><loc>https://takaakiu.github.io/tabs/projects.html</loc></url>
  <url><loc>https://takaakiu.github.io/ja/tabs/projects.html</loc></url>
</urlset>
```

`https://takaakiu.github.io/assets/sitemap.xml` after changes:

*(Note: The following appears to be malformed text output rather than valid XML, but is presented as it was in the original post.)*

```
https://takaakiu.github.io/ja/2025-06-16-setup-analytics-searchconsole 2025-06-17T01:19:10+00:00 https://takaakiu.github.io/posts/2025-06-16-setup-analytics-searchconsole 2025-06-17T01:19:10+00:00 https://takaakiu.github.io/ja/2025-05-18-how-to-gibo 2025-05-17T16:01:02+00:00 https://takaakiu.github.io/assets/img/posts/post_tech.jpg .gitignoreを半自動で作成できる「gibo」を使ってみた https://takaakiu.github.io/posts/2025-05-18-how-to-gibo 2025-05-17T16:01:02+00:00 https://takaakiu.github.io/assets/img/posts/post_tech.jpg How to Gibo! https://takaakiu.github.io/ja/2025-05-17-git-commit-message-guidlines 2025-05-17T01:23:53+00:00 https://takaakiu.github.io/assets/img/posts/post_idea.jpg Gitコミットメッセージのガイドラインを要約！ https://takaakiu.github.io/posts/2025-05-17-git-commit-message-guidlines 2025-05-17T01:23:53+00:00 https://takaakiu.github.io/assets/img/posts/post_idea.jpg Summary of Git Commit Message Guidelines! https://takaakiu.github.io/ja/2025-05-08-hello-jekyll 2025-05-07T15:00:00+00:00 https://takaakiu.github.io/assets/img/posts/post_tech.jpg GitHub Pages と Jekyll でこのサイトを立ち上げました https://takaakiu.github.io/posts/2025-05-08-hello-jekyll 2025-05-07T15:00:00+00:00 https://takaakiu.github.io/assets/img/posts/post_tech.jpg Built this site using GitHub Pages and Jekyll https://takaakiu.github.io/tabs/about.html https://takaakiu.github.io/ja/tabs/about.html https://takaakiu.github.io/tabs/archive.html https://takaakiu.github.io/ja/tabs/archive.html https://takaakiu.github.io/tabs/blog/ https://takaakiu.github.io/ja/tabs/blog/ https://takaakiu.github.io/ja/ https://takaakiu.github.io/ https://takaakiu.github.io/tabs/links.html https://takaakiu.github.io/ja/tabs/links.html https://takaakiu.github.io/tabs/projects.html https://takaakiu.github.io/ja/tabs/projects.html
```

After submitting the above to Google Search Console again, the status remained "Couldn't fetch." Therefore, I reverted the changes to `sitemap.xml`.

### Trying the Sitemap Plugin

Although I said it wasn't necessary for a portfolio site, the unresolved issue bothered me, so I decided to test this method.

#### 1. Add the Sitemap Plugin in `/_config.yml`

```diff
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

After committing these changes and building the site, `https://takaakiu.github.io/sitemap.xml` was generated.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://takaakiu.github.io/posts/2025-05-08-hello-jekyll</loc>
    <lastmod>2025-05-07T15:00:00+00:00</lastmod>
  </url>
  <url>
    <loc>https://takaakiu.github.io/ja/2025-05-08-hello-jekyll</loc>
    <lastmod>2025-05-07T15:00:00+00:00</lastmod>
  </url>
  <url>
    <loc>https://takaakiu.github.io/posts/2025-05-17-git-commit-message-guidlines</loc>
    <lastmod>2025-05-17T01:23:53+00:00</lastmod>
  </url>
  <url>
    <loc>https://takaakiu.github.io/ja/2025-05-17-git-commit-message-guidlines</loc>
    <lastmod>2025-05-17T01:23:53+00:00</lastmod>
  </url>
  <url>
    <loc>https://takaakiu.github.io/posts/2025-05-18-how-to-gibo</loc>
    <lastmod>2025-05-17T16:01:02+00:00</lastmod>
  </url>
  <url>
    <loc>https://takaakiu.github.io/ja/2025-05-18-how-to-gibo</loc>
    <lastmod>2025-05-17T16:01:02+00:00</lastmod>
  </url>
  <url>
    <loc>https://takaakiu.github.io/posts/2025-06-16-setup-analytics-searchconsole</loc>
    <lastmod>2025-06-17T01:33:18+00:00</lastmod>
  </url>
  <url>
    <loc>https://takaakiu.github.io/ja/2025-06-16-setup-analytics-searchconsole</loc>
    <lastmod>2025-06-17T01:33:18+00:00</lastmod>
  </url>
  <url><loc>https://takaakiu.github.io/ja/404.html</loc></url>
  <url><loc>https://takaakiu.github.io/tabs/about.html</loc></url>
  <url><loc>https://takaakiu.github.io/ja/tabs/about.html</loc></url>
  <url><loc>https://takaakiu.github.io/tabs/archive.html</loc></url>
  <url><loc>https://takaakiu.github.io/ja/tabs/archive.html</loc></url>
  <url><loc>https://takaakiu.github.io/tabs/blog/</loc></url>
  <url><loc>https://takaakiu.github.io/ja/tabs/blog/</loc></url>
  <url><loc>https://takaakiu.github.io/ja/</loc></url>
  <url><loc>https://takaakiu.github.io/</loc></url>
  <url><loc>https://takaakiu.github.io/tabs/links.html</loc></url>
  <url><loc>https://takaakiu.github.io/ja/tabs/links.html</loc></url>
  <url><loc>https://takaakiu.github.io/ja/privacy-policy.html</loc></url>
  <url><loc>https://takaakiu.github.io/privacy-policy.html</loc></url>
  <url><loc>https://takaakiu.github.io/tabs/projects.html</loc></url>
  <url><loc>https://takaakiu.github.io/ja/tabs/projects.html</loc></url>
</urlset>
```

#### 2. Disable Automatic Generation of `robots.txt`

By default, `/robots.txt` is automatically generated by the theme. The initial content is as follows:

```
---
layout: robot
# to disable this page, simply set published: false or delete this file
published: true
---
```

While I could delete the file, I decided to rename it from `/robots.txt` to `/_robots.txt` in case I wanted to revert to the theme's auto-generation later.

To prevent it from being read by the auto-generation process, I changed its content as follows:

```diff
---
layout: robot
# to disable this page, simply set published: false or delete this file
-published: true
+published: false
---
```

#### 3. Place `robots.txt` as a Static File

I created a `robots.txt` file in the root of the repository with the following content:

```txt
User-agent: *
Disallow:

Sitemap: https://takaakiu.github.io/sitemap.xml
```

As of 2025.06.17, after trying both reviewing the sitemap settings and introducing the sitemap plugin, the result in Google Search Console remains "Couldn't fetch."

After trying various things, I have reverted all settings to their original state and will stick with the theme's default generation for now.
