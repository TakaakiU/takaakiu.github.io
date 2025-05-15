#!/usr/bin/env ruby
# GitHub Codespaces - bash [ruby _scripts/new_post.rb "new-post" "New Post!"]
require 'date'

# 記事タイトルの取得（引数から受け取る）
lng_pair = ARGV[0] || "new-post"
title = ARGV[1] || "New Post Article!"
author = ARGV[2] || "TakaakiU"
date = Date.today.strftime("%Y-%m-%d")
timestamp = Time.now.strftime("%Y-%m-%d %H:%M:%S %z")

# 生成するファイルパス
filename_en = "_posts/#{date}-#{lng_pair}.markdown"
filename_jp = "ja/_posts/#{date}-#{lng_pair}.markdown"

# 記事のテンプレート（英語）
content_en = <<~MD
---
# multilingual page pair id, this must pair with translations of this page. (This name must be unique)
lng_pair: id_#{lng_pair.capitalize}
title: #{title.capitalize}

# post specific
author: #{author.capitalize}
category: xxxx
tags: [xxxx, xxxx]
img: ":post_pic1.jpg"

# publish date
date: #{timestamp}

# seo
#meta_modify_date: #{timestamp}
#meta_description: ""

# optional settings
#image_viewer_on: true
#image_lazy_loader_on: true
#on_site_search_exclude: true
#search_engine_exclude: true
published: false
---
MD

# 記事のテンプレート（日本語）
content_jp = <<~MD
---
# 多言語ページペアID。このIDは、このページの翻訳とペアになる必要があります。（この名前は一意でなければなりません）
lng_pair: id_#{lng_pair.capitalize}
title: #{title.capitalize}

# 投稿固有の設定
author: #{author.capitalize}
category: xxxx
tags: [xxxx, xxxx]
img: ":post_pic1.jpg"

# 公開日
date: #{timestamp}

# SEO設定
#meta_modify_date: #{timestamp}
#meta_description: ""

# オプション設定
#image_viewer_on: true
#image_lazy_loader_on: true
#on_site_search_exclude: true
#search_engine_exclude: true
published: false
---
MD

# ファイルを作成
File.write(filename_en, content_en)
File.write(filename_jp, content_jp)

puts "✅ 記事ファイルを作成しました:"
puts "  - #{filename_en}"
puts "  - #{filename_jp}"
