---
# multilingual page pair id, this must pair with translations of this page. (This name must be unique)
lng_pair: id_Hello_Jekyll
title: Built this site using GitHub Pages and Jekyll

# post specific
# if not specified, .name will be used from _data/owner/[language].yml
author: TakaakiU
# multiple category is not supported
category: Tech
# multiple tag entries are possible
tags: [jekyll, github]
# thumbnail image for post
img: ":post_tech.jpg"
# disable comments on this page
#comments_disable: true

# publish date
date: 2025-05-08 00:00:00 +0900

# seo
# if not specified, date will be used.
#meta_modify_date: 2022-02-10 08:11:06 +0900
# check the meta_common_description in _data/owner/[language].yml
meta_description: "Hello, I'm TakaakiU. I used Jekyll and GitHub Pages (github.io), which I've been curious about for a while, to create this website. For the Jekyll theme, I chose 'Mr. Green,' a theme that supports multiple languages. The theme developer shared detailed instructions on social media, making the process easier than I had expected. I'll also share what I did here, as a personal note for future reference."

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

Hello, my name is [TakaakiU](https://github.com/takaakiu){:target="_blank" rel="noopener noreferrer"}.

I've created this website using **Jekyll** and **GitHub Pages** (github.io), which I've been interested in for some time. For the Jekyll theme, I used a multilingual-friendly theme called "**[Mr. Green](https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme){:target="_blank" rel="noopener noreferrer"}**."

Thanks to the developer of the theme, who shared detailed instructions on social media, the process was much easier than I expected. I'll share what I did here as a personal reference.

## Overview

### GitHub Pages

"GitHub Pages allows you to publish a website based on a repository on GitHub."

And the best part? **Even free plans let you use it without any costs.** Kudos to GitHub for their generosity!  

<details markdown="1">

<summary>Original Text: What is GitHub Pages? | GitHub Official (Click here to expand)</summary>

```
You can use GitHub Pages to host a website about yourself, your organization, or your project directly from a repository on GitHub.

Source: [What is GitHub Pages?](https://docs.github.com/en/pages/getting-started-with-github-pages/what-is-github-pages){:target="_blank" rel="noopener noreferrer"}.
```

</details>

#### Usage Limits

> GitHub Pages sites are subject to the following usage limits:
> 
> - You can only create one user or organization site for each account on GitHub.
> - GitHub Pages source repositories have a recommended limit of 1 GB. For more information, see [About large files on GitHub](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-large-files-on-github#file-and-repository-size-limitations){:target="_blank" rel="noopener noreferrer"}.
> - Published GitHub Pages sites may be no larger than 1 GB.
> - GitHub Pages deployments will timeout if they take longer than 10 minutes.
> - GitHub Pages sites have a soft bandwidth limit of 100 GB per month.
> - GitHub Pages sites have a soft limit of 10 builds per hour. This limit does not apply if you build and publish your site with a custom GitHub Actions workflow.
> - In order to provide consistent quality of service for all GitHub Pages sites, rate limits may apply. These rate limits are not intended to interfere with legitimate uses of GitHub Pages. If your request triggers rate limiting, you will receive an appropriate response with an HTTP status code of 429, along with an informative HTML body.
> 
> Source：[GitHub Pages limits](https://docs.github.com/en/pages/getting-started-with-github-pages/github-pages-limits){:target="_blank" rel="noopener noreferrer"}

Although there are various limitations, it seems quite feasible to operate a simple personal site without any issues.

### Jekyll

[Jekyll](https://jekyllrb.com/){:target="_blank" rel="noopener noreferrer"} - pronounced as "Jekyll."

> Jekyll was first released in 2008 by Tom Preston-Werner. Later, Parker Moore, a GitHub employee, took over the project and led the release of Jekyll 1.  
>  
> Jekyll initiated the trend of static website development. By 2017, Jekyll became one of the most popular static site generators, largely due to its adoption by GitHub. The Jekyll project on GitHub continues to be actively maintained, with regular releases for bug fixes.  
>  
> Source: [Jekyll - Wikipedia](https://en.wikipedia.org/wiki/Jekyll_(software)#History){:target="_blank" rel="noopener noreferrer"}.

As mentioned [here](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll){:target="_blank" rel="noopener noreferrer"}, GitHub's official documentation provides guidance on creating a site with Jekyll.

#### Jekyll Themes "Mr.Green"

Jekyll offers a wide variety of themes. Among them, I chose the visually appealing and multilingual-friendly theme called "[Mr. Green](https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme){:target="_blank" rel="noopener noreferrer"}."

I believe I came across it through keywords like "[Jekyll + theme + Japanese support + multilingual](https://www.google.com/search?q=Jekyll+theme+Japanese+support+multilingual){:target="_blank" rel="noopener noreferrer}" where an official article ranked high in the search results.

Additionally, I found [this site](https://blog.ingen084.net/posts/2023-06-18-renew-again){:target="_blank" rel="noopener noreferrer"} and thought the theme looked neat and well-organized.

If you're looking for other themes, you can explore [this official article](https://jekyllrb.com/docs/themes/){:target="_blank" rel="noopener noreferrer}. If you need specific features, leveraging search engines or generative AI might yield highly relevant results.

## Build Process

### Prerequisites

- A GitHub account is already created
- An active internet connection

### Steps

I followed [this guide](https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme/blob/main/README.md#github-pages){:target="_blank" rel="noopener noreferrer"} provided by Mr. Green's official documentation.

1. [Fork the official Mr. Green repository](https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme/fork){:target="_blank" rel="noopener noreferrer"}

2. After forking, change the `url` in `_config.yml`

   ```diff
   - url: "https://your_github_user_name.github.io"
   + url: "https://takaakiu.github.io"
   ```

   → You can view my actual `_config.yml` [here](https://github.com/takaakiu/takaakiu.github.io/blob/main/_config.yml){:target="_blank" rel="noopener noreferrer"}.

3. Rename the forked repository to `takaakiu.github.io`

   Here, `takaakiu` represents **your GitHub username**. Replace it with your own username.
   [Reference: How to rename a repository | GitHub Docs](https://docs.github.com/en/repositories/creating-and-managing-repositories/renaming-a-repository){:target="_blank" rel="noopener noreferrer"}.

4. Confirm that deployment automatically starts in the `Actions` tab of the forked repository

   You can check the Actions of my repository [here](https://github.com/TakaakiU/takaakiu.github.io/actions){:target="_blank" rel="noopener noreferrer"}.  
   From what I recall, it took quite a bit of time—around 15 to 20 minutes. Be patient and wait for the process to complete.

5. Verify that the deployment has completed successfully by checking for a green checkmark after the yellow "in progress" icon.

6. Check if the URL below is accessible:

   The URL is `https://takaakiu.github.io`. Replace `takaakiu` with **your GitHub username**.

7. And you're done!

   Now you can customize the site to suit your needs. For reference, I’ve shared the changes I made below.

### Customizations (As of May 7, 2025)

I retrieved the differences between the original fork source (official Jekyll theme repository) and my forked repository.  
The main changes include restricting it to English and Japanese and making minor visual adjustments.

Below are the results of comparing the directory structures before and after the Fork.

| **Name**              | **Folder**           | **Comparison Result**               | **Extension** |
|-----------------------|----------------------|-------------------------------------|---------------|
| `.github`             |                      | Same                                |               |
| `_data`               |                      | Folder differs                      |               |
| `├─conf`              | _data               | Folder differs                      |               |
| `    ├─main.yml`      | _data\conf          | Text file differs                   | yml           |
| `    ├─others.yml`    | _data\conf          | Text file is identical              | yml           |
| `    └─posts.yml`     | _data\conf          | Text file is identical              | yml           |
| `├─const`             | _data               | Same                                |               |
| `├─content`           | _data               | Folder differs                      |               |
| `    └─projects`      | _data\content       | Folder differs                      |               |
| `        ├─en.yml`    | _data\content\projects | Text file differs                  | yml           |
| ~~`        ├─es.yml`~~| _data\content\projects | Deleted in Fork                    | yml           |
| ~~`        ├─fr.yml`~~| _data\content\projects | Deleted in Fork                    | yml           |
| `        ├─ja.yml`    | _data\content\projects | Text file differs                  | yml           |
| ~~`        ├─ko.yml`~~| _data\content\projects | Deleted in Fork                    | yml           |
| ~~`        ├─pt.yml`~~| _data\content\projects | Deleted in Fork                    | yml           |
| ~~`        ├─tr.yml`~~| _data\content\projects | Deleted in Fork                    | yml           |
| ~~`        └─zh.yml`~~| _data\content\projects | Deleted in Fork                    | yml           |
| `├─lang`              | _data               | Folder differs                      |               |
| `    ├─en.yml`        | _data\lang          | Text file differs                   | yml           |
| ~~`    ├─es.yml`~~    | _data\lang          | Deleted in Fork                     | yml           |
| ~~`    ├─fr.yml`~~    | _data\lang          | Deleted in Fork                     | yml           |
| `    ├─ja.yml`        | _data\lang          | Text file differs                   | yml           |
| ~~`    ├─ko.yml`~~    | _data\lang          | Deleted in Fork                     | yml           |
| ~~`    ├─pt.yml`~~    | _data\lang          | Deleted in Fork                     | yml           |
| ~~`    ├─tr.yml`~~    | _data\lang          | Deleted in Fork                     | yml           |
| ~~`    └─zh.yml`~~    | _data\lang          | Deleted in Fork                     | yml           |
| `└─owner`             | _data               | Folder differs                      |               |
| `    ├─en.yml`        | _data\owner         | Text file differs                   | yml           |
| ~~`    ├─es.yml`~~    | _data\owner         | Deleted in Fork                     | yml           |
| ~~`    ├─fr.yml`~~    | _data\owner         | Deleted in Fork                     | yml           |
| `    ├─ja.yml`        | _data\owner         | Text file differs                   | yml           |
| ~~`    ├─ko.yml`~~    | _data\owner         | Deleted in Fork                     | yml           |
| ~~`    ├─pt.yml`~~    | _data\owner         | Deleted in Fork                     | yml           |
| ~~`    ├─tr.yml`~~    | _data\owner         | Deleted in Fork                     | yml           |
| ~~`    └─zh.yml`~~    | _data\owner         | Deleted in Fork                     | yml           |
| `_includes`           |                      | Same                                |               |
| `_layouts`            |                      | Same                                |               |
| `_posts`              |                      | Folder differs                      |               |
| ~~`├─2021-08-10-Test-page1.markdown`~~ | _posts | Deleted in Fork            | markdown      |
| ~~`├─2021-08-11-Test-page2.markdown`~~ | _posts | Deleted in Fork            | markdown      |
| ~~`├─2021-09-12-Test-page3.markdown`~~ | _posts | Deleted in Fork            | markdown      |
| ~~`├─2021-09-13-Test-page4.markdown`~~ | _posts | Deleted in Fork            | markdown      |
| ~~`├─2021-10-14-Test-page5.markdown`~~ | _posts | Deleted in Fork            | markdown      |
| ~~`├─2021-10-15-Test-page6.markdown`~~ | _posts | Deleted in Fork            | markdown      |
| ~~`├─2021-11-16-Test-page7.markdown`~~ | _posts | Deleted in Fork            | markdown      |
| ~~`├─2022-01-01-welcome-to-jekyll.markdown`~~ | _posts | Deleted in Fork        | markdown      |
| `├─2022-02-10-Examples.markdown`      | _posts               | Text file differs                   | markdown      |
| `├─2025-05-08-hello-jekyll.markdown`  | _posts               | Added in Fork                       | markdown      |
| `├─2025-05-17-git-commit-message-guidlines.markdown` | _posts | Added in Fork       | markdown      |
| `└─2025-05-18-how-to-gibo.markdown`   | _posts               | Added in Fork                       | markdown      |
| `_scripts`            |                      | Added in Fork                        |               |
| `assets`              |                      | Folder differs                       |               |
| `├─_scss`             | assets              | Same                                 |               |
| `├─css`               | assets              | Same                                 |               |
| `├─fonts`             | assets              | Same                                 |               |
| `├─img`               | assets              | Folder differs                       |               |
| `    ├─about`         | assets\img          | Folder differs                       |               |
| `        └─about.jpg` | assets\img\about    | Binary file differs                  | jpg           |
| `    ├─default`       | assets\img          | Folder differs                       |               |
| `        ├─cc`        | assets\img\default  | Same                                 |               |
| `        ├─1x1px.png` | assets\img\default  | Binary file is identical             | png           |
| `        ├─mastodon.svg` | assets\img\default | Text file is identical              | svg           |
| `        └─profile_pic.jpg` | assets\img\default | Binary file differs                | jpg           |
| `    ├─favicons`      | assets\img          | Folder differs                       |               |
| ~~`        ├─android-chrome-192x192.png`~~ | assets\img\favicons | Deleted in Fork  | png           |
| ~~`        ├─android-chrome-512x512.png`~~ | assets\img\favicons | Deleted in Fork  | png           |
| `        ├─apple-touch-icon.png`      | assets\img\favicons | Binary file differs                 | png           |
| `        ├─favicon.ico`                | assets\img\favicons | Binary file differs                 | ico           |
| ~~`        ├─favicon.svg`~~            | assets\img\favicons | Added in Fork                       | svg           |
| ~~`        ├─favicon-16x16.png`~~      | assets\img\favicons | Deleted in Fork                     | png           |
| ~~`        ├─favicon-32x32.png`~~      | assets\img\favicons | Deleted in Fork                     | png           |
| `        ├─favicon-96x96.png`         | assets\img\favicons | Added in Fork                       | png           |
| ~~`        ├─mstile-150x150.png`~~     | assets\img\favicons | Deleted in Fork                     | png           |
| `        ├─web-app-manifest-192x192.png` | assets\img\favicons | Added in Fork                    | png           |
| `        └─web-app-manifest-512x512.png` | assets\img\favicons | Added in Fork                    | png           |
| `    ├─home`         | assets\img          | Folder differs                       |               |
| `        └─home-heading.jpg`          | assets\img\home     | Binary file differs                  | jpg           |
| `    ├─posts`        | assets\img          | Folder differs                       |               |
| `        ├─mock1.jpg`| assets\img\posts    | Binary file is identical             | jpg           |
| `        ├─post_idea.jpg` | assets\img\posts | Added in Fork                       | jpg           |
| `        ├─post_pic1.jpg` | assets\img\posts | Binary file is identical            | jpg           |
| `        ├─post_pic2.jpg` | assets\img\posts | Binary file is identical            | jpg           |
| `        ├─post_pic3.jpg` | assets\img\posts | Binary file is identical            | jpg           |
| `        └─post_tech.jpg` | assets\img\posts | Added in Fork                       | jpg           |
| `    └─projects`      | assets\img         | Folder differs                       |               |
| `        ├─project1_thumb.jpg` | assets\img\projects | Binary file is identical         | jpg           |
| `        ├─project2_thumb.jpg` | assets\img\projects | Binary file is identical         | jpg           |
| `        └─projects-heading.jpg` | assets\img\projects | Binary file differs              | jpg           |
| `├─js`               | assets              | Same                                 |               |
| `├─browserconfig.xml`| assets              | Text file is identical               | xml           |
| `├─manifest.json`    | assets              | Text file is identical               | json          |
| `└─sitemap.xml`      | assets              | Text file is identical               | xml           |
| ~~`es`~~             |                     | Deleted in Fork                      |               |
| ~~`fr`~~             |                     | Deleted in Fork                      |               |
| `ja`                 |                     | Folder differs                       |               |
| `├─_posts`           | ja                  | Folder differs                       |               |
| ~~`    ├─2021-08-10-Test-page1.markdown`~~ | ja\_posts | Deleted in Fork       | markdown      |
| ~~`    ├─2021-08-11-Test-page2.markdown`~~ | ja\_posts | Deleted in Fork       | markdown      |
| ~~`    ├─2021-09-12-Test-page3.markdown`~~ | ja\_posts | Deleted in Fork       | markdown      |
| ~~`    ├─2021-09-13-Test-page4.markdown`~~ | ja\_posts | Deleted in Fork       | markdown      |
| ~~`    ├─2021-10-14-Test-page5.markdown`~~ | ja\_posts | Deleted in Fork       | markdown      |
| ~~`    ├─2021-10-15-Test-page6.markdown`~~ | ja\_posts | Deleted in Fork       | markdown      |
| ~~`    └─2021-11-16-Test-page7.markdown`~~ | ja\_posts | Deleted in Fork       | markdown      |
| `    ├─2022-02-10-Examples.markdown` | ja\_posts | Text file is identical             | markdown      |
| `    ├─2025-05-08-hello-jekyll.markdown` | ja\_posts | Added in Fork                  | markdown      |
| `    ├─2025-05-17-git-commit-message-guidlines.markdown` | ja\_posts | Added in Fork | markdown      |
| `    └─2025-05-18-how-to-gibo.markdown` | ja\_posts | Added in Fork                    | markdown      |
| `├─query`           | ja                  | Same                                 |               |
| `├─tabs`            | ja                  | Folder differs                       |               |
| `    ├─blog`        | ja\tabs             | Same                                 |               |
| `    ├─about.md`    | ja\tabs             | Text file differs                    | md            |
| `    ├─archive.md`  | ja\tabs             | Text file differs                    | md            |
| `    ├─links.md`    | ja\tabs             | Text file differs                    | md            |
| `    └─projects.md` | ja\tabs             | Text file differs                    | md            |
| `├─404.md`          | ja                  | Text file is identical               | md            |
| `├─index.md`        | ja                  | Text file differs                    | md            |
| `└─privacy-policy.md` | ja                 | Text file differs                    | md            |
| ~~`ko`~~            |                     | Deleted in Fork                      |               |
| ~~`pt`~~            |                     | Deleted in Fork                      |               |
| `query`             |                     | Same                                 |               |
| `tabs`              |                     | Same                                 |               |
| ~~`tr`~~            |                     | Deleted in Fork                      |               |
| ~~`zh`~~            |                     | Deleted in Fork                      |               |
| `.editorconfig`     |                     | Text file is identical               | editorconfig  |
| `.gitattributes`    |                     | Text file is identical               | gitattributes |
| `.gitignore`        |                     | Text file is identical               | gitignore     |
| `_config.yml`       |                     | Text file differs                    | yml           |
| `404.md`            |                     | Text file is identical               | md            |
| `CODE_OF_CONDUCT.md` |                    | Text file is identical               | md            |
| `Gemfile`           |                     | Text file is identical               |               |
| `index.md`          |                     | Text file is identical               | md            |
| `LICENSE.txt`       |                     | Text file is identical               | txt           |
| `privacy-policy.md` |                     | Text file is identical               | md            |
| `README.md`         |                     | Text file is identical               | md            |
| `README-es.md`      |                     | Text file is identical               | md            |
| `README-fr.md`      |                     | Text file is identical               | md            |
| `README-ja.md`      |                     | Text file is identical               | md            |
| `README-ko.md`      |                     | Text file is identical               | md            |
| `README-pt.md`      |                     | Text file is identical               | md            |
| `README-tr.md`      |                     | Text file is identical               | md            |
| `README-zh.md`      |                     | Text file is identical               | md            |
| `robots.txt`        |                     | Text file is identical               | txt           |

For more detailed **File Content Comparison**, please refer to the **Toggle Display** below.

<details markdown="1">

<summary>Differences from the Original Fork (Click to Expand)</summary>

- **_data/conf/main.yml**

  ```diff
  - language_switch_lang_list: [en, ja, pt, fr, zh, ko, tr, es]
  + # language_switch_lang_list: [en, ja, pt, fr, zh, ko, tr, es]
  + language_switch_lang_list: [en, ja]
  ```

- **_data/content/projects/en.yml**

  ```diff
  # you can move this content to front matter of [language]/tabs/projects.md
  ###########################################################
  #                Projects Page Data
  ###########################################################
  page_data:
    main:
      header: "Projects"
  -     info: "Your Project page description."
  +     info: "Post project development records, documents, and notices."
      text_color: "white"
      # if you don't want to use background image, comment it. back_color will be activated.
      img: ":projects-heading.jpg"
      back_color: "lightblue"

    category:
  -     - title: "Example"
  -       type: id_example
  +     - title: "Dev Logs"
  +       type: id_devlogs
        color: "gray"
  -     - title: "Picture"
  -       type: id_picture 
  +     - title: "Documents"
  +       type: id_documents
        color: "#62b462"
  -     - title: "Quote"
  -       type: id_quote 
  +     - title: "Notices"
  +       type: id_notices
        color: "#2FD0ED"

    list:
  -     # example
  -     - type: id_example
  -       project_name: "Example Project"
  -       project_excerpt: "Examples"
  +     # devlogs
  +     - type: id_devlogs
  +       project_name: "Nitaku"
  +       project_excerpt: "A mobile app that allows you to create a tier table by repeating two choices."
        img: ":project1_thumb.jpg"
        img_title: "img title1"
  -       date: "2021-03-13"
  +       date: "2025-05-18"
        post: |
  -         # Examples
  +         # Dev Logs

          This is an example page to display markdown related styles for Mr. Green Jekyll Theme.

          ### Headings (centered)
          {:data-align="center"}

          # Heading 1

          ## Heading 2

          ### Heading 3

          #### Heading 4

          ##### Heading 5

          ###### Heading 6

          ***

          ### Paragraphs

          #### Paragraph

          **William Shakespeare**, Let me not to the marriage of true minds
          Admit impediments. Love is not love
          Which alters when it alteration finds,
          Or bends with the remover to remove.
          O no, it is an ever-fixed mark
          That looks on tempests and is never shaken;
          It is the star to every wand'ring barque,
          Whose worth's unknown, although his height be taken.
          Love's not Time's fool, though rosy lips and cheeks
          Within his bending sickle's compass come;
          Love alters not with his brief hours and weeks,
          But bears it out even to the edge of doom.
          If this be error and upon me proved,
          I never writ, nor no man ever loved.

          #### Texts

          Quoted text `Hello world`

          Bold text **Hello world**

          Italic text _Hello world_

          kbd text <kbd>Hello world</kbd>

          #### Blockquote

          > **William Shakespeare**, Let me not to the marriage of true minds
          Admit impediments. Love is not love
          Which alters when it alteration finds,
          Or bends with the remover to remove.
          O no, it is an ever-fixed mark
          That looks on tempests and is never shaken;
          It is the star to every wand'ring barque,
          Whose worth's unknown, although his height be taken.
          Love's not Time's fool, though rosy lips and cheeks
          Within his bending sickle's compass come;
          Love alters not with his brief hours and weeks,
          But bears it out even to the edge of doom.
          If this be error and upon me proved,
          I never writ, nor no man ever loved.

          ### Link

          This is [Mr. Green Jekyll Theme](https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme), a simple theme built for [Jekyll](https://jekyllrb.com/).

          ### Picture

          ![such a lovely place](:projects-heading.jpg)

          ### Picture (centered)

          ![such a lovely place](:project1_thumb.jpg){:data-align="center"}

          ### Lists

          - Apple
          - Banana
          - Orange

          1. Fruits
              1. Apples
                  - Granny Smith
                  - Mutsu
              1. Bananas
                  - Cavendish
                  - Red
          1. Vegetables

          ***

          ### Tables

          #### Small Table (centered)

          | Fruits(not aligned) | Alignment (centered) | num (right align) |
          | ------------------- | :------------------: | ----------------: |
          | Apple               |       centered       |              9999 |
          | Banana              |  centered long text  |               999 |
          | Orange              |       centered       |                99 |
          | Lemon               |       centered       |                 9 |
          {:data-align="center"}

          #### Wide Table (centered)

          scroll enabled when page is narrow

          | Fruits | num (left align) | num (right align) | num  | num  | num  |
          | ------ | :--------------- | ----------------: | ---- | ---- | ---- |
          | Apple  | 1111             |              1111 | 2222 | 3333 | 4444 |
          | Banana | 111              |               111 | 222  | 333  | 444  |
          | Orange | 11               |                11 | 22   | 33   | 44   |
          | Lemon  | 1                |                 1 | 2    | 3    | 4    |
          {:data-align="center"}

          #### Wider Table

          scroll enabled when page is narrow

          | Fruits | num (left align) | num (right align) | num  | num  | num  | num  | num  | num  |
          | ------ | :--------------- | ----------------: | ---- | ---- | ---- | ---- | ---- | ---- |
          | Apple  | 1111             |              1111 | 2222 | 3333 | 4444 | 5555 | 6666 | 7777 |
          | Banana | 111              |               111 | 222  | 333  | 444  | 555  | 666  | 777  |
          | Orange | 11               |                11 | 22   | 33   | 44   | 55   | 66   | 77   |
          | Lemon  | 1                |                 1 | 2    | 3    | 4    | 5    | 6    | 7    |

          ### Code

          #### Quote

          ```python
          for i in range(5, 10):
            print(i)
          ```

  -     # picture 
  -     - type: id_picture 
  -       project_name: "Example Project"
  -       project_excerpt: "Picture"
  +     # documents
  +     - type: id_documents
  +       project_name: "Documents"
  +       project_excerpt: "Post project tutorials, guides, specifications, and manuals."
        img: ":project2_thumb.jpg"
        img_title: "img title2"
  -       date: "2021-04-23"
  +       date: "2025-05-18"
        post: |
          # Title
          This is project content.

          ![Image](:project2_thumb.jpg)

  -     # quote
  -     - type: id_quote 
  - 	      project_name: "Example Project"
  -       project_excerpt: "William Shakespeare"
  +     # notices
  +     - type: id_notices
  +       project_name: "Notices"
  +       project_excerpt: "Post updates and defect information on deliverables."
        #img: ":project1_thumb.jpg"
        #img_title: "img title3"
        date: "2021-05-27"
        post: |
          Let me not to the marriage of true minds
          Admit impediments. Love is not love
          Which alters when it alteration finds,
          Or bends with the remover to remove.
          O no, it is an ever-fixed mark
          That looks on tempests and is never shaken;
          It is the star to every wand'ring barque,
          Whose worth's unknown, although his height be taken.
          Love's not Time's fool, though rosy lips and cheeks
          Within his bending sickle's compass come;
          Love alters not with his brief hours and weeks,
          But bears it out even to the edge of doom.
          If this be error and upon me proved,
          I never writ, nor no man ever loved.
  -     - type: id_quote 
  +     - type: id_notices
        project_name: "Example Project"
        project_excerpt: "Albert Einstein"
        img: ":project2_thumb.jpg"
        img_title: "img title4"
        date: "2021-06-08"
        post: |
          Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.
  -     - type: id_quote 
  +     - type: id_notices
        project_name: "Example Project"
        project_excerpt: "Mae West"
        img: ":project1_thumb.jpg"
        img_title: "img title5"
        date: "2021-08-20"
        post: |
          You only live once, but if you do it right, once is enough.
  -     - type: id_quote 
  +     - type: id_notices
        project_name: "Example Project"
        project_excerpt: "Mahatma Gandhi "
        img: ":project2_thumb.jpg"
        img_title: "img title6"
        date: "2021-12-20"
        post: |
          Be the change that you wish to see in the world.

  ```

- **_data/content/projects/ja.yml**

  ```diff
  # you can move this content to front matter of [language]/tabs/projects.md
  ###########################################################
  #                Projects Page Data
  ###########################################################
  page_data:
    main:
      header: "プロジェクト"
  -     info: "プロジェクトページの説明はこちら。"
  +     info: "プロジェクトの開発記録やドキュメント、お知らせを掲載。"
      text_color: "white"
      # if you don't want to use background image, comment it. back_color will be activated.
      img: ":projects-heading.jpg"
      back_color: "lightblue"

    category:
  -     - title: "例"
  -       type: id_example
  +     - title: "開発ログ"
  +       type: id_devlogs
        color: "gray"
  -     - title: "写真"
  -       type: id_picture 
  +     - title: "ドキュメント"
  +       type: id_documents
        color: "#62b462"
  -     - title: "名言"
  -       type: id_quote 
  +     - title: "お知らせ"
  +       type: id_notices
        color: "#2FD0ED"

    list:
  -     # example
  -     - type: id_example 
  -       project_name: "サンプルプロジェクト"
  -       project_excerpt: "例"
  +     # devlogs
  +     - type: id_devlogs
  +       project_name: "二択（nitaku）"
  +       project_excerpt: "2つの選択肢を繰り返すことで、Tier表を作成できるモバイルアプリ。"
        img: ":project1_thumb.jpg"
        img_title: "img title1"
  -       date: "2021-03-13"
  +       date: "2025-05-18"
        post: |
  -         # Examples
  +         # Dev Logs

          This is an example page to display markdown related styles for Mr. Green Jekyll Theme.

          ### Headings (centered)
          {:data-align="center"}

          # Heading 1

          ## Heading 2

          ### Heading 3

          #### Heading 4

          ##### Heading 5

          ###### Heading 6

          ***

          ### Paragraphs

          #### Paragraph

          **William Shakespeare**, Let me not to the marriage of true minds
          Admit impediments. Love is not love
          Which alters when it alteration finds,
          Or bends with the remover to remove.
          O no, it is an ever-fixed mark
          That looks on tempests and is never shaken;
          It is the star to every wand'ring barque,
          Whose worth's unknown, although his height be taken.
          Love's not Time's fool, though rosy lips and cheeks
          Within his bending sickle's compass come;
          Love alters not with his brief hours and weeks,
          But bears it out even to the edge of doom.
          If this be error and upon me proved,
          I never writ, nor no man ever loved.

          #### Texts

          Quoted text `Hello world`

          Bold text **Hello world**

          Italic text _Hello world_

          kbd text <kbd>Hello world</kbd>

          #### Blockquote

          > **William Shakespeare**, Let me not to the marriage of true minds
          Admit impediments. Love is not love
          Which alters when it alteration finds,
          Or bends with the remover to remove.
          O no, it is an ever-fixed mark
          That looks on tempests and is never shaken;
          It is the star to every wand'ring barque,
          Whose worth's unknown, although his height be taken.
          Love's not Time's fool, though rosy lips and cheeks
          Within his bending sickle's compass come;
          Love alters not with his brief hours and weeks,
          But bears it out even to the edge of doom.
          If this be error and upon me proved,
          I never writ, nor no man ever loved.

          ### Link

          This is [Mr. Green Jekyll Theme](https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme), a simple theme built for [Jekyll](https://jekyllrb.com/).

          ### Picture

          ![such a lovely place](:projects-heading.jpg)

          ### Picture (centered)

          ![such a lovely place](:project1_thumb.jpg){:data-align="center"}

          ### Lists

          - Apple
          - Banana
          - Orange

          1. Fruits
              1. Apples
                  - Granny Smith
                  - Mutsu
              1. Bananas
                  - Cavendish
                  - Red
          1. Vegetables

          ***

          ### Tables

          #### Small Table (centered)

          | Fruits(not aligned) | Alignment (centered) | num (right align) |
          | ------------------- | :------------------: | ----------------: |
          | Apple               |       centered       |              9999 |
          | Banana              |  centered long text  |               999 |
          | Orange              |       centered       |                99 |
          | Lemon               |       centered       |                 9 |
          {:data-align="center"}

          #### Wide Table (centered)

          scroll enabled when page is narrow

          | Fruits | num (left align) | num (right align) | num  | num  | num  |
          | ------ | :--------------- | ----------------: | ---- | ---- | ---- |
          | Apple  | 1111             |              1111 | 2222 | 3333 | 4444 |
          | Banana | 111              |               111 | 222  | 333  | 444  |
          | Orange | 11               |                11 | 22   | 33   | 44   |
          | Lemon  | 1                |                 1 | 2    | 3    | 4    |
          {:data-align="center"}

          #### Wider Table

          scroll enabled when page is narrow

          | Fruits | num (left align) | num (right align) | num  | num  | num  | num  | num  | num  |
          | ------ | :--------------- | ----------------: | ---- | ---- | ---- | ---- | ---- | ---- |
          | Apple  | 1111             |              1111 | 2222 | 3333 | 4444 | 5555 | 6666 | 7777 |
          | Banana | 111              |               111 | 222  | 333  | 444  | 555  | 666  | 777  |
          | Orange | 11               |                11 | 22   | 33   | 44   | 55   | 66   | 77   |
          | Lemon  | 1                |                 1 | 2    | 3    | 4    | 5    | 6    | 7    |

          ### Code

          #### Quote

          ```python
          for i in range(5, 10):
            print(i)
          ```

  -     # picture 
  -     - type: id_picture 
  -       project_name: "サンプルプロジェクト"
  -       project_excerpt: "写真"
  +     # documents
  +     - type: id_documents
  +       project_name: "ドキュメント"
  +       project_excerpt: "プロジェクトに関するチュートリアル、ガイド、仕様書、マニュアルを掲載。"
        img: ":project2_thumb.jpg"
        img_title: "img title2"
  -       date: "2021-04-23"
  +       date: "2025-05-18"
        post: |
          # Title
          This is project content.

          ![Image](:project2_thumb.jpg)

  -     # quote
  -     - type: id_quote 
  -       project_name: "サンプルプロジェクト"
  -       project_excerpt: "William Shakespeare"
  +     # notices
  +     - type: id_notices
  +       project_name: "お知らせ"
  +       project_excerpt: "成果物の更新や不具合情報を掲載。"
        #img: ":project1_thumb.jpg"
        #img_title: "img title3"
  -       date: "2021-05-27"
  +       date: "2025-05-18"
        post: |
          Let me not to the marriage of true minds
          Admit impediments. Love is not love
          Which alters when it alteration finds,
          Or bends with the remover to remove.
          O no, it is an ever-fixed mark
          That looks on tempests and is never shaken;
          It is the star to every wand'ring barque,
          Whose worth's unknown, although his height be taken.
          Love's not Time's fool, though rosy lips and cheeks
          Within his bending sickle's compass come;
          Love alters not with his brief hours and weeks,
          But bears it out even to the edge of doom.
          If this be error and upon me proved,
          I never writ, nor no man ever loved.
  -     - type: id_quote
  +     - type: id_notices
        project_name: "サンプルプロジェクト"
        project_excerpt: "Albert Einstein"
        img: ":project2_thumb.jpg"
        img_title: "img title4"
        date: "2021-06-08"
        post: |
          Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.
  -     - type: id_quote
  +     - type: id_notices
        project_name: "サンプルプロジェクト"
        project_excerpt: "Mae West"
        img: ":project1_thumb.jpg"
        img_title: "img title5"
        date: "2021-08-20"
        post: |
          You only live once, but if you do it right, once is enough.
  -     - type: id_quote
  +     - type: id_notices
        project_name: "サンプルプロジェクト"
        project_excerpt: "Mahatma Gandhi "
        img: ":project2_thumb.jpg"
        img_title: "img title6"
        date: "2021-12-20"
        post: |
          Be the change that you wish to see in the world.
  ```

- **_data/lang/en.yml**

  ```diff
  # Mr. Green Jekyll Theme (https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme)
  # Copyright (c) 2022 Mr. Green's Workshop https://www.MrGreensWorkshop.com
  # Licensed under MIT

  lng:
    name: English
    # based on ISO_639-1 https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
    code: en
    # specifically needed for open-graph meta og:locale. if open_graph or html_lng_with_country_code not enabled in _data/conf/main.yml, it's not necessary.
    # For html tags, you can enable or disable using html_lng_with_country_code defined in _data/conf/main.yml
    # based on ISO_3166-1 https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
    country: US
    switch_title: En
    offer:
      title: Language
      msg_page: View this page in English.
      # if page translation is not available, use this.
      msg_site: To home

  date:
    # if %b is used in the long format, it will be replaced with the corresponding item in 'months' list below.
    long: "%b %-d, %Y"
    day: "%d"
    year: "%Y"
    # months itself also used in Archive page.
    months: [Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec]

  not_found:
    header: Page not found
    line1: The page you requested could not be found.
    line2: Try menu, or site search if available.

  no_translation_tooltip: No Translation

  navigation:
    contact_header: Contact
    side_navigation_button: Side menu
    scroll_back_to_top: Back to top

  color_scheme_switch_tooltip: Color scheme

  search:
    placeholder: Search
    noResultText: No results were found.

  image_viewer:
    load_error: The image could not be loaded.

  copyright:
    additional_text: " All rights reserved."

  creative_commons:
    some_rights_reserved: Some rights reserved.
    # check _data/owner/[language].yml for license type.
    by: Except where otherwise noted, content on this web site is licensed under a Creative Commons Attribution 4.0 International License.
    by-nd: Except where otherwise noted, content on this web site is licensed under a Creative Commons Attribution-NoDerivatives 4.0 International License.
    by-sa: Except where otherwise noted, content on this web site is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
    by-nc: Except where otherwise noted, content on this web site is licensed under a Creative Commons Attribution-NonCommercial 4.0 International License.
    by-nc-nd: Except where otherwise noted, content on this web site is licensed under a Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
    by-nc-sa: Except where otherwise noted, content on this web site is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.

  # for 404 layout
  not-found:
    title: "404"

  # for post layout
  post:
    read_time:
      unit: " min"
      text: " read"
      # c for char w for word
      word_char: w
      # char or words per minute
      per_minute: 200
    pager_buttons:
  -     older_post: "← Older Post"
  -     newer_post: "Newer Post →"
  +     older_post: "👈 Older Post"
  +     newer_post: "Newer Post 👉"
      first_post: First
      last_post: Last
    comments:
      noscript: Please enable JavaScript to view the Comments.
      disqus:
        count_title: Comments
        click_to_load: "Load comments"
        consent:
          title: Comments (Disqus.com)
          text: >
            Comment feature is hosted by a third party. By showing the external content you accept the $terms and $privacy_policy of disqus.com.
            <br>If you prefer to opt out of targeted advertising, open $settings_link and click "opt-out" button and close. Return here and load comments.
          terms_link_text: Terms of Service
          privacy_link_text: Privacy Policy
          settings_link_text: this link
          button:
            load_once: Show only this time
            load_and_do_not_ask_again: Always show
    table_of_contents:
      heading: Contents
      tooltip:
        move: Drag to move
        close: Close
    share:
      heading: Share on
      link_copied: Link copied!
      tooltip:
        # keys need to match with _data/share.yml
        twitter: Twitter
        facebook: Facebook
        telegram: Telegram
        linkedin: LinkedIn
        email: Email
        copy_link: Copy link

  # for post-list layout
  post-list:
    title: Blog
    button_name: Blog
    upside_down_tabs:
      tab:
        all: All
        categories: Categories
        tags: Tags
        years: Years
        clear: Clear
        close: Close
        tooltip:
          clear: Clear
          close: Close
      msg:
        property_list:
          # keys need to match with /query/post-query.json
          tags: Tag
          category: Category
          year: Year
        # you can use these wildcards, {property} {value} {thumb}
        resultFoundTitleFormat: "{property} : {thumb}"

  # for home layout
  home:
    title: Welcome
    button_name: Home
    new_posts_title: New Articles
    new_posts_show_more_button: View More ...

  # for archives layout
  archives:
    title: Archive
    button_name: Archive
    page_header: Archive

  # for about layout
  about:
  -   title: About
  -   button_name: About
  +   title: TakaakiU
  +   button_name: TakaakiU
    email_title: email

  # for links layout
  links:
    title: Links
    button_name: Links
    link_text: Web site
    info_text: Info

  # for projects layout
  projects:
    title: Projects
    button_name: Projects
    read_more_text: Read more
    read_less_text: Read less

  # for privacy-policy layout
  privacy-policy:
    title: &privacy_policy_title Privacy policy

  # constants to be replaced for
  constants:
    greetings: Hello
    welcome: Welcome
  -   sample: Sample
  +   # sample: Sample

  # for contact form
  contact_form:
    button_name: Contact Form
    formLoadingText: Loading the Contact Form...

  # for cookie consent
  cookie_consent:
    privacy_policy_link_text: *privacy_policy_title
    side_nav_setting_button_tooltip: &cookie_settings Cookie settings
    panel_bar:
      msg: >
        This website uses cookies to optimize site functionality.
        It will be activated with your approval.
      privacy_msg: Check $privacy_link.
      buttons:
        accept: &accept_button Allow all
        settings: Customize
        deny: &deny_button Deny
        close: Close
    panel_settings:
      title: *cookie_settings
      msg: >
        This website uses cookies to optimize site functionality.
        It will be activated with your approval. Please click each item below for cookie policy.
      privacy_msg: Check $privacy_link.
      buttons:
        accept: *accept_button
        save: Allow selection
        deny: *deny_button
      always_active: Always active
      consent_types:
        necessary:
          title: Strictly necessary cookies
          info: >
            These cookies are essential for the website function and cannot be disable.
            They are usually set when site function like color scheme etc. is changed.
            These cookies do not store any personally identifiable information.
            $gtag_info
        analytics:
          title: Performance cookies
          info: $gtag_info
        preferences:
          title: Functionality cookies
          info: $gtag_info
        advertising:
          title: Targeting and advertising cookies
          info: $gtag_info
      gtag_info:
        # from https://support.google.com/tagmanager/answer/10718549#consent-types
        ad_storage: >
          Enables storage (such as cookies) related to advertising.
        analytics_storage: >
          Enables storage (such as cookies) related to analytics e.g. visit duration.
        functionality_storage: >
          Enables storage that supports the functionality of the website or app e.g. language settings.
        personalization_storage: >
          Enables storage related to personalization e.g. video recommendations.
        security_storage: >
          Enables storage related to security such as authentication functionality,
          fraud prevention, and other user protection.

  ```

- **_data/lang/ja.yml**

  ```diff
  # Mr. Green Jekyll Theme (https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme)
  # Copyright (c) 2022 Mr. Green's Workshop https://www.MrGreensWorkshop.com
  # Licensed under MIT

  lng:
    name: 日本語
    # based on ISO_639-1 https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
    code: ja
    # specifically needed for open-graph meta og:locale. if open_graph or html_lng_with_country_code not enabled in _data/conf/main.yml, it's not necessary.
    # For html tags, you can enable or disable using html_lng_with_country_code defined in _data/conf/main.yml
    # based on ISO_3166-1 https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
    country: JP
    switch_title: Jp
    offer:
      title: 言語
      msg_page: このページを日本語で表示する。
      # if page translation is not available, use this.
      msg_site: 日本語ホームへ

  date:
    # if %b is used in the long format, it will be replaced with the corresponding item in 'months' list below.
    long: "%Y年%m月%d日"
    day: "%d日"
    year: "%Y年"
    # months itself also used in Archive page.
    months: [1月, 2月, 3月, 4月, 5月, 6月, 7月, 8月, 9月, 10月, 11月, 12月]

  not_found:
    header: ページが見つかりませんでした。
    line1: リクエストされたページが見つかりませんでした。
    line2: メニューを試すか、利用可能な場合はサイト検索を試してください。

  no_translation_tooltip: 訳がありません

  navigation:
    contact_header: コンタクト
    side_navigation_button: サイドメニュー
    scroll_back_to_top: トップへ戻る

  color_scheme_switch_tooltip: 配色

  search:
    placeholder: 検索
    noResultText: 何も見つかりませんでした。

  image_viewer:
    load_error: 画像が読み込めませんでした。

  copyright:
    additional_text: " 著作権で保護されています。"

  creative_commons:
    some_rights_reserved: 一部の権利は留保されています。
    # check _data/owner/[language].yml for license type.
    by: 特に明記されていない限り、このWebサイトのコンテンツはクリエイティブ・コモンズ 表示 4.0 国際 ライセンスの下に提供されています。
    by-nd: 特に明記されていない限り、このWebサイトのコンテンツはクリエイティブ・コモンズ 表示 - 改変禁止 4.0 国際 ライセンスの下に提供されています。
    by-sa: 特に明記されていない限り、このWebサイトのコンテンツはクリエイティブ・コモンズ 表示 - 継承 4.0 国際 ライセンスの下に提供されています。
    by-nc: 特に明記されていない限り、このWebサイトのコンテンツはクリエイティブ・コモンズ 表示 - 非営利 4.0 国際 ライセンスの下に提供されています。
    by-nc-nd: 特に明記されていない限り、このWebサイトのコンテンツはクリエイティブ・コモンズ 表示 - 非営利 - 改変禁止 4.0 国際 ライセンスの下に提供されています。
    by-nc-sa: 特に明記されていない限り、このWebサイトのコンテンツはクリエイティブ・コモンズ 表示 - 非営利 - 継承 4.0 国際 ライセンスの下に提供されています。

  # for 404 layout
  not-found:
    title: "404"

  # for post layout
  post:
    read_time:
      unit: "分"
      text: "で読めます"
      # c for char w for word
      word_char: c
      # char or words per minute
      per_minute: 500
    pager_buttons:
  -     older_post: "← 古い投稿へ"
  -     newer_post: "新しい投稿へ →"
  +     older_post: "👈 古い記事へ"
  +     newer_post: "新しい記事へ 👉"
      first_post: First
      last_post: Last
    comments:
      noscript: コメントを表示するには、JavaScriptを有効にしてください。
      disqus:
        count_title: コメント
        click_to_load: "コメントを表示する"
        consent:
          title: コメント (Disqus.com)
          text: >
            コメント機能はサードパーティによってホストされています。 外部コンテンツを表示することにより、disqus.comの$termsと$privacy_policyに同意したことになります。
            <br>ターゲットを絞った広告をオプトアウトする場合は、$settings_linkを開き、「opt-out」ボタンをクリックして閉じます。 ここに戻ってコメントを表示してください。
          terms_link_text: 利用規約
          privacy_link_text: プライバシーポリシー
          settings_link_text: このリンク
          button:
            load_once: 今回のみ表示
            load_and_do_not_ask_again: 常に表示
    table_of_contents:
      heading: 見出し
      tooltip:
        move: ドラッグして移動
        close: 閉じる
    share:
      heading: シェア
      link_copied: リンクがコピーされました!
      tooltip:
        # keys need to match with _data/share.yml
        twitter: Twitter
        facebook: Facebook
        telegram: Telegram
        linkedin: LinkedIn
        email: メール
        copy_link: リンクをコピー

  # for post-list layout
  post-list:
    title: ブログ
    button_name: ブログ
    upside_down_tabs:
      tab:
        all: 全て
        categories: カテゴリー
        tags: タグ
        years: 年
        clear: クリア
        close: 閉じる
        tooltip:
          clear: クリア
          close: 閉じる
      msg:
        property_list:
          # keys need to match with /query/post-query.json
          tags: タグ
          category: カテゴリー
          year: 年
        # you can use these wildcards, {property} {value} {thumb}
        resultFoundTitleFormat: "{property} : {thumb}"

  # for home layout
  home:
    title: ようこそ
    button_name: ホーム
    new_posts_title: 新着記事
    new_posts_show_more_button: もっと見る ...

  # for archives layout
  archives:
    title: アーカイブ
    button_name: アーカイブ
    page_header: アーカイブ

  # for about layout
  about:
  -   title: 私について
  -   button_name: 私について
  +   title: TakaakiU
  +   button_name: TakaakiU
    email_title: メール

  # for links layout
  links:
    title: リンク
    button_name: リンク
    link_text: Webサイト
    info_text: 説明

  # for projects layout
  projects:
    title: プロジェクト
    button_name: プロジェクト
    read_more_text: 続きを読む
    read_less_text: 閉じる

  # for privacy-policy layout
  privacy-policy:
    title: &privacy_policy_title プライバシーポリシー

  # constants to be replaced for
  constants:
    greetings: こんにちは
    welcome: ようこそ
  -   sample: サンプル
  +   # sample: サンプル

  # for contact form
  contact_form:
    button_name: お問い合わせフォーム
    formLoadingText: お問い合わせフォームの読み込み中…

  # for cookie consent
  cookie_consent:
    privacy_policy_link_text: *privacy_policy_title
    side_nav_setting_button_tooltip: &cookie_settings クッキー設定
    panel_bar:
      msg: >
        当Webサイトは、機能を最適化するためにクッキーを使用しています。
        承認後に有効になります。
      privacy_msg: $privacy_linkを確認する。
      buttons:
        accept: &accept_button 全て許可
        settings: 設定
        deny: &deny_button 拒否
        close: 閉じる
    panel_settings:
      title: *cookie_settings
      msg: >
        当Webサイトは、機能を最適化するためにクッキーを使用しています。
        承認後に有効になります。クッキーポリシーについては、以下の各項目をクリックしてください。
      privacy_msg: $privacy_linkを確認する。
      buttons:
        accept: *accept_button
        save: 選択を許可
        deny: *deny_button
      always_active: 常時有効
      consent_types:
        necessary:
          title: 不可欠なクッキー
          info: >
            このCookieは、Webサイトの機能に不可欠であり、無効にすることはできません。
            通常、配色などのサイト機能を変更したときに設定されます。
            このCookieには、個人を特定できる情報は保存されません。
            $gtag_info
        analytics:
          title: パフォーマンスクッキー
          info: $gtag_info
        preferences:
          title: 機能性クッキー
          info: $gtag_info
        advertising:
          title: ターゲティング広告クッキー
          info: $gtag_info
      gtag_info:
        # from https://support.google.com/tagmanager/answer/10718549#consent-types
        ad_storage: >
          広告に関連する保存（Cookie など）を有効にします。
        analytics_storage: >
          訪問時の滞在時間などの分析に関連する保存（Cookie など）を有効にします。
        functionality_storage: >
          Webサイトまたはアプリの機能（言語設定など）をサポートする保存を有効にします。
        personalization_storage: >
          おすすめの動画など、パーソナライズに関連する保存を有効にします。
        security_storage: >
          認証機能、不正行為防止、その他のユーザー保護など、
          セキュリティに関連する保存を有効にします。

  ```

- **_data/owner/en.yml**

  ```diff
  ###########################################################
  # Owner's Personal Information
  ###########################################################
  # This is your brand name
  - brand: "Your Brand"
  + brand: "takaakiu.github.io"

  # text below the brand name
  brand_sub_text: "$site_sample"

  # used for seo meta post author (if it's not defined in post)
  - name: "Your Name"
  + name: "TakaakiU"

  # home page top header texts
  home:
    # you can also use $site_brand, $site_greetings, $site_welcome in line1 and line2 for replacing texts.
    top_header_line1: "$site_welcome"
    # if commented, top header will be a single line
    top_header_line2: "$site_brand"

  # about page sub title
  about:
    sub_title: "$site_sample"

  # if you don't want to add copyright year, comment or leave it blank.
  # the year during which the claimed copyright for the work was first asserted.
  - copyright_start_year: "2022"
  + copyright_start_year: "2025"

  # make sure creative_commons.enable is true in _data/conf/main.yml file
  creative_commons:
    # choose your license from https://creativecommons.org/choose/?lang=en
    # then check link address below Selected License and make sure it matches with the list below

    # select one below
    # 1. by        Attribution 4.0 International
    # 2. by-nd     Attribution-NoDerivatives 4.0 International
    # 3. by-sa     Attribution-ShareAlike 4.0 International
    # 4. by-nc     Attribution-NonCommercial 4.0 International
    # 5. by-nc-nd  Attribution-NonCommercial-NoDerivatives 4.0 International
    # 6. by-nc-sa  Attribution-NonCommercial-ShareAlike 4.0 International
  -   license_type: "by-sa"
  +   license_type: "by"

  # seo meta this is needed for each language
  # If meta_description is not defined in front matter, it's created from (post / page) content,
  # if it has no content, this will be used for page description. It is also used in manifest.json
  - meta_common_description: "Your meta description."
  + meta_common_description: "This site was set up to document my personal development experiences and deliverables."

  # contact options (side nav bottom and about page)
  # the order of the items will be shown as here.
  # comment to remove any contact item
  contacts:
  -   #- github: ""
  +   - github: "takaakiu"
    #- email: ""
    #- linkedin: ""
  -   #- twitter: ""
  +   - twitter: "takaakiu_81z"
    #- mastodon: ""
    #- instagram: ""
    #- youtube: ""
    #- facebook: ""
  # to add more, check the _data/const/contact.yml file
  #  - your_new_contact: ""

  # make sure one of comment engine is enabled in _data/conf/posts.yml file
  comments:
    # Create a Disqus account and fill out the items below.
    disqus:
      shortname: ""
    # To use Giscus, go to https://giscus.app and look for the "Configuration".
    # - Enter your repository name, and it will create the following settings for you under "Enable giscus".
    # - Get the corresponding items and fill in the items below.
    # For other settings, please check the _data/conf/posts.yml file.
    giscus:
      repo: ""
      repo-id: ""
      category: ""
      category-id: ""

  # if no id is provided, this feature will be disabled.
  # make sure your environment does not match with google.analytics.ignore in _data/conf/main.yml
  google_analytics_id: ""

  # there are different ways to verify web page. One is adding this as meta into html.
  # make sure you set meta.google_site_verify: true in _data/conf/main.yml
  # make sure your environment does not match with google.site_verification.ignore in _data/conf/main.yml
  google_site_verification: ""

  # make sure you set contact_form.enable: true in _data/conf/main.yml
  # - Create a form in Google Forms. You can use the template named "Contact Information".
  # - Customize the form colors and response validation according to your needs.
  # - To disable forced Google sign-in, go to "Settings > Response" and switch off the "Limit to 1 response".
  # - Click the "Send" button at the top right.
  # - Click the link icon from "Send via" list and copy the link.
  # - Then paste the link between double quotes.
  google_forms_contact_form_url: ""

  ```

- **_data/owner/ja.yml**

  ```diff
  ###########################################################
  # Owner's Personal Information
  ###########################################################
  # This is your brand name
  - brand: "サイト名"
  + brand: "takaakiu.github.io"

  # text below the brand name
  brand_sub_text: "$site_sample"

  # used for seo meta post author (if it's not defined in post)
  - name: "作者名"
  + name: "TakaakiU"

  # home page top header texts
  home:
    # you can also use $site_brand, $site_greetings, $site_welcome in line1 and line2 for replacing texts.
    top_header_line1: "$site_welcome"
    # if commented, top header will be a single line
    top_header_line2: "$site_brand"

  # about page sub title
  about:
    sub_title: "$site_sample"

  # if you don't want to add copyright year, comment or leave it blank.
  # the year during which the claimed copyright for the work was first asserted.
  - copyright_start_year: "2022"
  + copyright_start_year: "2025"

  # make sure creative_commons.enable is true in _data/conf/main.yml file
  creative_commons:
    # choose your license from https://creativecommons.org/choose/?lang=en
    # then check link address below Selected License and make sure it matches with the list below

    # select one below
    # 1. by        Attribution 4.0 International
    # 2. by-nd     Attribution-NoDerivatives 4.0 International
    # 3. by-sa     Attribution-ShareAlike 4.0 International
    # 4. by-nc     Attribution-NonCommercial 4.0 International
    # 5. by-nc-nd  Attribution-NonCommercial-NoDerivatives 4.0 International
    # 6. by-nc-sa  Attribution-NonCommercial-ShareAlike 4.0 International
  -   license_type: "by-sa"
  +   license_type: "by"

  # seo meta this is needed for each language
  # If meta_description is not defined in front matter, it's created from (post / page) content,
  # if it has no content, this will be used for page description. It is also used in manifest.json
  - meta_common_description: "メタディスクリプション"
  + meta_common_description: "このサイトは、私の個人的な開発経験と成果物を記録するために開設。"

  # contact options (side nav bottom and about page)
  # the order of the items will be shown as here.
  # comment to remove any contact item
  contacts:
  -   #- github: ""
  +   - github: "takaakiu"
    #- email: ""
    #- linkedin: ""
  -   #- twitter: ""
  +   - twitter: "takaakiu_81z"
    #- mastodon: ""
    #- instagram: ""
    #- youtube: ""
    #- facebook: ""
  # to add more, check the _data/const/contact.yml file
  #  - your_new_contact: ""

  # make sure one of comment engine is enabled in _data/conf/posts.yml file
  comments:
    # Create a Disqus account and fill out the items below.
    disqus:
      shortname: ""
    # To use Giscus, go to https://giscus.app and look for the "Configuration".
    # - Enter your repository name, and it will create the following settings for you under "Enable giscus".
    # - Get the corresponding items and fill in the items below.
    # For other settings, please check the _data/conf/posts.yml file.
    giscus:
      repo: ""
      repo-id: ""
      category: ""
      category-id: ""

  # if no id is provided, this feature will be disabled.
  # make sure your environment does not match with google.analytics.ignore in _data/conf/main.yml
  google_analytics_id: ""

  # there are different ways to verify web page. One is adding this as meta into html.
  # make sure you set meta.google_site_verify: true in _data/conf/main.yml
  # make sure your environment does not match with google.site_verification.ignore in _data/conf/main.yml
  google_site_verification: ""

  # make sure you set contact_form.enable: true in _data/conf/main.yml
  # - Create a form in Google Forms. You can use the template named "Contact Information".
  # - Customize the form colors and response validation according to your needs.
  # - To disable forced Google sign-in, go to "Settings > Response" and switch off the "Limit to 1 response".
  # - Click the "Send" button at the top right.
  # - Click the link icon from "Send via" list and copy the link.
  # - Then paste the link between double quotes.
  google_forms_contact_form_url: ""

  ```

- **_config.yml**

  ```diff
  ###########################################################
  # Global Configuration (https://jekyllrb.com/docs/configuration/options/)
  ###########################################################
  # if you want to force HTTPS, specify the domain without the http at the start
  # set domain: "your_github_user_name.github.io"
  domain: ""

  # your web site url
  # for GitHub Pages, url: "https://your_github_user_name.github.io"
  - url: ""
  + url: "https://takaakiu.github.io"

  # path to this site
  # if your page is located at https://your_github_user_name.github.io/blog, then set baseurl: "/blog"
  baseurl: ""

  # please use TZ database name column on the list table
  # https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
  #timezone: ""

  ###########################################################
  # Front Matter Defaults (https://jekyllrb.com/docs/configuration/front-matter-defaults/)
  ###########################################################
  defaults:
    # for posts
    - scope:
        # to separate language posts folders
        path: "_posts"
      values:
        layout: "post"
        permalink: /posts/:path

    # for multilingual posts
    - scope:
        # to separate language posts folders
        path: "*/_posts"
      values:
        hidden: true
        layout: "post"
        permalink: /:path

    # example: enable setting for all pages. You may still need to enable some setting from _data/conf/posts.yml or _data/conf/main.yml
    # - scope:
    #     # an empty string here means all files in the project
    #     path: ""
    #   values:
    #     image_viewer_on: true
    #     image_lazy_loader_on: true

  ###########################################################
  # Markdown Options (https://jekyllrb.com/docs/configuration/markdown/)
  # Configuring Jekyll in your GitHub Pages site (https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/about-github-pages-and-jekyll)
  ###########################################################
  # This is default for GitHub Pages sites and cannot be changed.
  highlighter: rouge
  markdown: kramdown
  kramdown:
    # This is default for GitHub Pages sites and cannot be changed.
    syntax_highlighter: rouge

  ###########################################################
  # Plugins (Plugins supported by GitHub Pages https://pages.github.com/versions/)
  ###########################################################
  plugins:
    - jekyll-paginate
    - jekyll-redirect-from

  # since GitHub Pages runs jekyll with "--safe" flag, we need to add supported plugins in here. (only github supported plugins are allowed)
  whitelist:
    - jekyll-paginate
    - jekyll-redirect-from

  ###########################################################
  # jekyll-paginate (https://jekyllrb.com/docs/pagination/)
  ###########################################################
  paginate_path: "/tabs/blog/:num"
  # number of post per page
  # make sure this matches with post_query_paginator_post_per_page in _data/conf/posts.yml
  paginate: 5

  ###########################################################
  # jekyll-redirect-from (https://github.com/jekyll/jekyll-redirect-from)
  ###########################################################
  redirect_from:
    # Disabling generation of redirects.json
    json: false

  ###########################################################
  # html compression (https://jch.penibelst.de)
  ###########################################################
  compress_html:
    clippings: all
    comments: all
    #endings: all
    profile: false
    blanklines: false
    ignore:
      # disable this feature for development env.
      envs: [development]

  ###########################################################
  # js compression (for removing comments(/**/only), line breaks and spaces)
  # for debugging js files, simply set linebreak_and_space: false (in production env, this will be enabled automatically)
  # for more info about environments (https://jekyllrb.com/docs/configuration/environments/)
  ###########################################################
  compress_js:
    # enable or disable line breaks and space removal feature for development env.
    linebreak_and_space: false
    # disable this feature entirely for development or production env.
    #ignore: development

  ###########################################################
  # Sass (https://jekyllrb.com/docs/assets/)
  ###########################################################
  sass:
    sass_dir: assets/_scss
    # enable css compression
    style: compressed

  ###########################################################
  # Exclude these files or folders from production site
  ###########################################################
  exclude: ["Gemfile*", "vendor", ".github", ".vscode", "README*", "CODE_OF_CONDUCT.md", "LICENSE", "docs"]

  ```

</details>

## Summary

- This site was built using the following technologies:
  - **GitHub Pages**  
    A service that allows you to publish static websites for free based on a GitHub repository. It requires no configuration and supports automatic deployment, making it ideal for personal sites and blogs.
  - **Jekyll**  
    A tool that converts Markdown and HTML files into static websites. It is officially supported by GitHub Pages, making integration seamless. Simply push to the repository, and the site can be easily published. Perfect for simple, fast web development.
  - **Jekyll Theme "Mr. Green"**  
    While the developer's name couldn’t be identified, this Jekyll theme was developed by [@MrGreensWorkshop](https://github.com/MrGreensWorkshop).
    Released in 2022, it supports multilingual functionality, allowing users to add languages not included in the official repository.  
    Although I haven’t tried it yet, examining the configuration files suggests it can integrate with Google Analytics and Google Search Console.

## References

[Publish your personal website or blog in about 10 minutes using GitHub Pages! | Mr. Green Official YouTube](https://youtu.be/Sd_KBUH5Lk4?si=6WrDanzMG_TiYmhk){:target="_blank" rel="noopener noreferrer"}

[Create a GitHub Pages site using the Jekyll theme "Mr. Green" | Mr. Green Official](https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme/blob/main/README.md#github-pages){:target="_blank" rel="noopener noreferrer"}
