---
# multilingual page pair id, this must pair with translations of this page. (This name must be unique)
lng_pair: id_relationship-between-kramdown-and-gfm-and-comparison-table
title: Explain the relationship between Kramdown and GFM and Comparison table

# post specific
author: TakaakiU
# Tech or Idea
category: Tech
tags: [jekyll, markdown]
img: ":post_tech.jpg"

# publish date
date: 2025-08-12 03:04:51 +0000

# seo
#meta_modify_date: 2025-08-12 03:04:51 +0000
#meta_description: ""

# optional settings
#image_viewer_on: true
#image_lazy_loader_on: true
#on_site_search_exclude: true
#search_engine_exclude: true
published: false
---

## The Relationship Between GitHub's GFM and Jekyll's Kramdown

Kramdown and GFM are **independent "flavors"** that each extend the base Markdown specification.

- **GFM (GitHub Flavored Markdown)** is a set of **"writing rules"** defined by GitHub to make documentation more convenient, and it has become the de facto standard on the web.
- **Kramdown** is a high-performance Ruby-based **"conversion software (parser)"** adopted by tools like Jekyll. It possesses its own powerful extensions, such as assigning HTML attributes and creating footnotes.

Their relationship is that **Kramdown later incorporated and supported GFM's convenient features** (like tables and task lists). Consequently, Kramdown can interpret GFM syntax with high compatibility, but GFM (GitHub) cannot interpret Kramdown's unique syntax.

---

## Feature Comparison: Kramdown vs. GFM

| Feature | GFM (GitHub Flavored Markdown) | Kramdown | Notes |
| :--- | :--- | :--- | :--- |
| **Basic Syntax** | | | |
| Headings, Lists, Links, etc. | ✅ **Supported** | ✅ **Supported** | Compliant with the CommonMark spec. |
| **Key GFM Extensions** | | | |
| Tables | ✅ **Supported** | ✅ **Supported** | Fully supported in Kramdown with the `input: GFM` setting. |
| Task Lists (`- [x]`) | ✅ **Supported** | ✅ **Supported** | Same as above. |
| Strikethrough (`~~text~~`) | ✅ **Supported** | ✅ **Supported** | Same as above. |
| Code Syntax Highlighting | ✅ **Supported** | ✅ **Supported** | Kramdown integrates with highlighters like Rouge. |
| Emoji (`:tada:`) | ✅ **Supported** | ❌ **Not Supported** | Kramdown itself has no built-in emoji conversion feature.[^1] |
| Automatic Links (`#123`, `@user`) | ✅ **Supported** | ❌ **Not Supported** | This is a GitHub platform-specific feature. |
| **Key Kramdown Extensions** | | | |
| **Direct Attribute Assignment** `{: }` | ❌ **Not Supported** | ✅ **Supported** | **Kramdown's standout feature.** Allows adding `target="_blank"`, etc. |
| Footnotes `[^1]` | ✅ **Supported**[^2] | ✅ **Supported** | Powerful for academic documents. |
| Definition Lists | ❌ **Not Supported** | ✅ **Supported** | Useful for describing term-definition pairs. |
| Automatic Table of Contents `{:toc}` | ❌ **Not Supported** | ✅ **Supported** | Very useful for long documents. |
| Block-level Attribute Assignment | ❌ **Not Supported** | ✅ **Supported** | Allows adding IDs or classes to code blocks and quotes. |

[^1]: In a Jekyll environment, emojis can be enabled in Kramdown using plugins like `jekyll-emoji`.
[^2]: GFM now supports footnote syntax, but it was a later addition. Kramdown and others originally pioneered this feature.

## Usage Based on Your Goal

- **For documents that live exclusively on GitHub (e.g., READMEs):**
    - The correct approach is to follow **GFM** specifications. Kramdown's unique syntax cannot be used.
- **When building a website with Jekyll:**
    - Leverage the full power of **Kramdown**. You can create highly expressive content by using convenient GFM syntax (like tables) while combining it with Kramdown's unique features (like attribute assignment, footnotes, and TOCs) as needed.
