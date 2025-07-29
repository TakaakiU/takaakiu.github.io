#!/usr/bin/env ruby
# GitHub Codespaces - bash [ruby _scripts/new_post.rb "new-post" "New Post!"]
require 'time'
require 'fileutils'

# --- 設定項目 ---
# デフォルト値やパスをここで管理します
DEFAULT_POST_ID = "new-post"
DEFAULT_TITLE = "New Post Article!"
DEFAULT_AUTHOR = "TakaakiU"
POSTS_DIR_EN = "_posts"
POSTS_DIR_JP = "ja/_posts"

# --- スクリプト本体 ---

# 1. 引数の受け取りとバリデーション
post_id = ARGV[0] || DEFAULT_POST_ID
title = ARGV[1] || DEFAULT_TITLE
author = ARGV[2] || DEFAULT_AUTHOR

# 2. 日時情報の生成
now = Time.now
date_str = now.strftime("%Y-%m-%d")

timestamp_utc = now.utc.strftime("%Y-%m-%d %H:%M:%S %z")
# JST (+09:00) のタイムスタンプを生成
timestamp_jst = now.getlocal("+09:00").strftime("%Y-%m-%d %H:%M:%S %z")

# 3. ファイルパスの生成（File.joinで安全に結合）
filename_en = File.join(POSTS_DIR_EN, "#{date_str}-#{post_id}.markdown")
filename_jp = File.join(POSTS_DIR_JP, "ja-#{date_str}-#{post_id}.markdown")

# 4. 既存ファイルのチェックとディレクトリの自動生成
# 出力先ディレクトリが存在しない場合は作成する
FileUtils.mkdir_p(POSTS_DIR_EN)
FileUtils.mkdir_p(POSTS_DIR_JP)

if File.exist?(filename_en) || File.exist?(filename_jp)
  puts "❌ 該当のファイルはすでに存在します。処理を中断します。"
  puts "    - #{filename_en}" if File.exist?(filename_en)
  puts "    - #{filename_jp}" if File.exist?(filename_jp)
  exit
end

# 5. 記事テンプレートの生成
content_en = <<~MD
---
# multilingual page pair id, this must pair with translations of this page. (This name must be unique)
lng_pair: id_#{post_id}
title: #{title}

# post specific
author: #{author}
# Tech or Idea
category: xxxx
tags: [xxxx, xxxx]
img: ":post_xxxx.jpg"

# publish date
date: #{timestamp_utc}

# seo
#meta_modify_date: #{timestamp_utc}
#meta_description: ""

# optional settings
#image_viewer_on: true
#image_lazy_loader_on: true
#on_site_search_exclude: true
#search_engine_exclude: true
published: false
---
MD

content_jp = <<~MD
---
# 多言語ページペアID。このIDは、このページの翻訳とペアになる必要があります。（この名前は一意でなければなりません）
lng_pair: id_#{post_id}
title: #{title}

# 投稿固有の設定
author: #{author}
# Tech or Idea
category: xxxx
tags: [xxxx, xxxx]
img: ":post_xxxx.jpg"

# 公開日
date: #{timestamp_jst}

# SEO設定
#meta_modify_date: #{timestamp_jst}
#meta_description: ""

# オプション設定
#image_viewer_on: true
#image_lazy_loader_on: true
#on_site_search_exclude: true
#search_engine_exclude: true
published: false
---
MD

# 6. ファイルの書き込み
File.write(filename_en, content_en)
File.write(filename_jp, content_jp)

puts "🎯 記事ファイルを作成しました:"
puts "    - #{filename_en}"
puts "    - #{filename_jp}"
