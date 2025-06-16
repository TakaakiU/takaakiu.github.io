#!/usr/bin/env ruby
# GitHub Codespaces - bash [ruby _scripts/new_post.rb "new-post" "New Post!"]
require 'date'

# 記事タイトルの取得（引数から受け取る）
lng_pair = ARGV[0] || "new-post"
title = ARGV[1] || "New Post Article!"
author = ARGV[2] || "TakaakiU"
date = Date.today.strftime("%Y-%m-%d")
#timestamp = Time.now.strftime("%Y-%m-%d %H:%M:%S %z")
utc_time = Time.now.utc
timestamp_en_utc = utc_time.strftime("%Y-%m-%d %H:%M:%S %z")
jst_time = utc_time + (9 * 3600)
timestamp_jp_jst = jst_time.strftime("%Y-%m-%d %H:%M:%S") + " +0900"

# 生成するファイルパス
filename_en = "_posts/#{date}-#{lng_pair}.markdown"
filename_jp = "ja/_posts/#{date}-#{lng_pair}.markdown"

# 🔍 既存ファイルのチェック
if File.exist?(filename_en) || File.exist?(filename_jp)
  puts "❌　該当のファイルはすでに存在します。処理を中断します。"
  puts "　　　- #{filename_en}" if File.exist?(filename_en)
  puts "　　　- #{filename_jp}" if File.exist?(filename_jp)
  exit
end

# 記事のテンプレート（英語）
content_en = <<~MD
---
# multilingual page pair id, this must pair with translations of this page. (This name must be unique)
lng_pair: id_#{lng_pair}
title: #{title}

# post specific
author: #{author}
# Tech or Idea
category: xxxx
tags: [xxxx, xxxx]
img: ":post_xxxx.jpg"

# publish date
date: #{timestamp_en_utc}

# seo
#meta_modify_date: #{timestamp_en_utc}
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
lng_pair: id_#{lng_pair}
title: #{title}

# 投稿固有の設定
author: #{author}
# Tech or Idea
category: xxxx
tags: [xxxx, xxxx]
img: ":post_xxxx.jpg"

# 公開日
date: #{filename_jp}

# SEO設定
#meta_modify_date: #{filename_jp}
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

puts "🎯　記事ファイルを作成しました:"
puts "　　　- #{filename_en}"
puts "　　　- #{filename_jp}"
