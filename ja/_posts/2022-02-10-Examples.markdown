---
# 多言語ページペアID。このIDは、このページの翻訳とペアになる必要があります。（この名前は一意でなければなりません）
lng_pair: id_Examples
title: 例

# 投稿固有の設定
# 指定されていない場合、_data/owner/[language].yml の .name が使用されます
author: Mr. Green's Workshop
# 複数カテゴリーはサポートされていません
category: jekyll
# 複数のタグエントリが可能です
tags: [jekyll, サンプル, 例の投稿]
# 投稿のサムネイル画像
img: ":post_pic1.jpg"
# このページのコメントを無効化
#comments_disable: true

# 公開日
date: 2022-02-10 08:11:06 +0900

# SEO
# 指定されていない場合、公開日が使用されます
#meta_modify_date: 2022-02-10 08:11:06 +0900
# _data/owner/[language].yml の meta_common_description を確認してください
#meta_description: ""

# オプション設定
# 以下の "image_viewer_on" を使用して、個別のページまたは投稿（_posts/ や [language]/_posts フォルダ）で画像ビューアを有効化できます。
# すべての投稿で画像ビューアを有効化または無効化するには、_data/conf/main.yml の "image_viewer_posts: true" を設定してください。
#image_viewer_on: true
# 以下の "image_lazy_loader_on" を使用して、個別のページまたは投稿（_posts/ や [language]/_posts フォルダ）で画像遅延読み込みを有効化できます。
# すべての投稿で画像遅延読み込みを有効化または無効化するには、_data/conf/main.yml の "image_lazy_loader_posts: true" を設定してください。
#image_lazy_loader_on: true
# サイト内検索から除外
#on_site_search_exclude: true
# 検索エンジンから除外
#search_engine_exclude: true
# このページを無効化するには、published: false を設定するか、このファイルを削除してください
published: false
---

<!-- アウトライン開始 -->

これは、Mr. Green Jekyll Theme用のMarkdown関連のスタイルを表示する例のページです。

<!-- アウトライン終了 -->

### 見出し（中央配置）
{:data-align="center"}

# 見出し1

## 見出し2

### 見出し3

#### 見出し4

##### 見出し5

###### 見出し6

***

### 段落

#### 段落

**ウィリアム・シェイクスピア**, 真の心の結婚に障害を認めることはしない。
愛は、変化が訪れた時に変わるものではないし、
取り去る者によって消え去るものでもない。
否、それは嵐にも揺るがぬ永遠の標識、
さまよう船の星であり、その価値は計れない。
愛は時のしもべではなく、薔薇色の唇や頬が
その鎌の範囲に入っても変わらない。
愛は短い時間や週のうちに変わるものではなく、
終焉の果てまでもそれを貫く。
もしこれが誤りであると証明されれば、
私は書いたことがなく、誰も愛したことがない。

#### テキスト

引用テキスト `こんにちは世界`

太字テキスト **こんにちは世界**

斜体テキスト _こんにちは世界_

キーボードテキスト <kbd>こんにちは世界</kbd>

#### ブロック引用

> **ウィリアム・シェイクスピア**, 真の心の結婚に障害を認めることはしない。  
> 愛は、変化が訪れた時に変わるものではないし、  
> 取り去る者によって消え去るものでもない。  
> 否、それは嵐にも揺るがぬ永遠の標識、  
> さまよう船の星であり、その価値は計れない。  
> 愛は時のしもべではなく、薔薇色の唇や頬が  
> その鎌の範囲に入っても変わらない。  
> 愛は短い時間や週のうちに変わるものではなく、  
> 終焉の果てまでもそれを貫く。  
> もしこれが誤りであると証明されれば、  
> 私は書いたことがなく、誰も愛したことがない。

### リンク

これは [Mr. Green Jekyll Theme](https://github.com/MrGreensWorkshop/MrGreen-JekyllTheme){:target="_blank" rel="noopener noreferrer"} で、[Jekyll](https://jekyllrb.com/){:target="_blank" rel="noopener noreferrer"} のために構築されたシンプルなテーマです。

\* こんにちは世界！これは **[{{ site.data.owner[site.data.conf.main.default_lng].brand }}]({{ site.url }})** です。

### 画像

![素敵な場所](:post_pic1.jpg)

### 画像（中央配置）

![素敵な場所](:post_pic1.jpg){:data-align="center"}

### リスト

- りんご
- バナナ
- オレンジ

1. 果物
   1. りんご
      - グラニースミス
      - ムツ
   1. バナナ
      - キャベンディッシュ
      - レッド
1. 野菜

***

### 表

#### 小さい表（中央配置）

| 果物 (未整列) | 配置（中央）       | 数値（右寄せ） |
| ------------- | :----------------: | -------------: |
| りんご        |      中央配置      |           9999 |
| バナナ        |  中央配置（長文）  |            999 |
| オレンジ      |      中央配置      |             99 |
| レモン        |      中央配置      |              9 |
{:data-align="center"}

#### 横に広い表（中央配置）

ページ幅が狭いとスクロール可能

| 果物     | 数値（左寄せ） | 数値（右寄せ） | 数値 | 数値 | 数値 |
| -------- | :------------- | -------------: | ---- | ---- | ---- |
| りんご   | 1111           |           1111 | 2222 | 3333 | 4444 |
| バナナ   | 111            |            111 | 222  | 333  | 444  |
| オレンジ | 11             |             11 | 22   | 33   | 44   |
| レモン   | 1              |              1 | 2    | 3    | 4    |
{:data-align="center"}

### コード

#### ハイライト

{% highlight python %}
for i in range(5, 10):
  print(i)
{% endhighlight %}

#### 引用

```python
for i in range(5, 10):
  print(i)
```
