#!/usr/bin/env ruby
require 'date'

# ID を取得し、`id_` がある場合は削除
id_to_delete = ARGV[0]&.sub(/^id_/, '')

unless id_to_delete
  puts "❌　削除する記事の ID を指定してください。"
  exit
end

# 削除対象のファイルを検索
directories = ["_posts/", "ja/_posts/"]
matching_files = []

# ファイル名に `id_to_delete` を含むものを検索
directories.each do |dir|
  Dir.glob("#{dir}*#{id_to_delete}.markdown").each do |file|
    matching_files << file
  end
end

# 該当ファイルがない場合の処理
if matching_files.empty?
  puts "❌　指定された ID に該当する記事が見つかりません: #{id_to_delete}"
  exit
end

# 削除するか確認
matching_files.each do |file|
  puts "⚠️　以下のファイルを削除しますか？"
  puts "  - #{file}"
  print "削除する場合は 'y'、スキップする場合は 'n' を入力してください: "
  confirm = STDIN.gets.chomp.downcase

  unless confirm.match?(/^y$|^n$/i)
    puts "❌　無効な入力です。処理を中断します。"
    exit
  end

  if confirm.match?(/^y$/i)
    File.delete(file)
    puts "✅　#{file} を削除しました。"
  else
    puts "🛑　#{file} の削除をスキップしました。"
  end
end

puts "🎯　ファイルの削除が完了しました。"
