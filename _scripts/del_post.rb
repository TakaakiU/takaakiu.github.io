#!/usr/bin/env ruby
# GitHub Codespaces - bash [ruby _scripts/del_post.rb "id_xxxx"]
# スクリプト: 関連するブログ記事ファイルをIDに基づいて一括で削除する

# --- 設定項目 ---
# 検索対象のディレクトリをここで管理します
POSTS_DIRS = ["_posts", "ja/_posts"].freeze

# --- スクリプト本体 ---

# 1. 引数の受け取りとバリデーション
id_to_delete = ARGV[0]&.sub(/^id_/, '')

if id_to_delete.nil? || id_to_delete.empty?
  puts "❌ 削除する記事の ID を指定してください。"
  puts "使用法: ruby #{__FILE__} <記事ID>"
  exit 1
end

# 2. 削除対象のファイルをより厳密なパターンで検索
# `flat_map` を使い、見つかったファイルパスを一つの配列にまとめる
matching_files = POSTS_DIRS.flat_map do |dir|
  # `*-id.markdown` の形式で検索し、意図しないファイルのマッチを防ぐ
  Dir.glob(File.join(dir, "*-#{id_to_delete}.markdown"))
end

# 3. 該当ファイルがない場合の処理
if matching_files.empty?
  puts "✅ 指定された ID に該当する記事は見つかりませんでした: #{id_to_delete}"
  exit
end

# 4. 削除対象ファイルをリストアップし、一度だけ確認を求める
puts "⚠️ 以下のファイルを一括で削除しますか？"
matching_files.each { |file| puts "  - #{file}" }
print "削除する場合は 'y' を入力してください (それ以外はキャンセル): "
confirm = STDIN.gets.chomp.downcase

# 'y' 以外が入力された場合は処理を中止する
unless confirm == 'y'
  puts "🛑 処理をキャンセルしました。"
  exit
end

# 5. ファイルの削除処理
puts # 見やすいように改行
matching_files.each do |file|
  begin
    File.delete(file)
    puts "✅ #{file} を削除しました。"
  rescue => e
    # ファイル削除中にエラーが起きてもスクリプトを止めず、メッセージを表示する
    puts "🔥 #{file} の削除中にエラーが発生しました: #{e.message}"
  end
end

puts "\n🎯 削除処理が完了しました。"