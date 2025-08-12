---
# 多言語ページペアID。このIDは、このページの翻訳とペアになる必要があります。（この名前は一意でなければなりません）
lng_pair: id_winget-agreement-option
title: 【wingetの自動化における注意点】初回実行時の同意について

# 投稿固有の設定
author: TakaakiU
# Tech or Idea
category: Tech
tags: [powershell, winget]
img: ":post_tech.jpg"

# 公開日
date: 2025-08-12 00:00:00 +0900

# SEO設定
#meta_modify_date: ja/_posts/2025-07-07-winget-agreement-option.markdown
meta_description: "wingetは自動でソフトやアプリがインストールできる便利なツールですが、自動化する場合には注意が必要です。タイトルのとおり、はじめてwingetコマンドを使う端末の場合はパッケージやソースリポジトリの契約に同意する必要があります。"

# オプション設定
#image_viewer_on: true
#image_lazy_loader_on: true
#on_site_search_exclude: true
#search_engine_exclude: true
# published: false
---

wingetは自動でソフトやアプリがインストールできる便利なツールですが、自動化する場合には注意が必要です。
タイトルのとおり、はじめてwingetコマンドを使う端末の場合はパッケージやソースリポジトリの契約に同意する必要があります。

```powershell
PS C:\Users\Administrator> winget install --id microsoft.powershell --version 7.5.1.0
'msstore' ソースでは、使用する前に次の契約を表示する必要があります。
Terms of Transaction: https://aka.ms/microsoft-store-terms-of-transaction
ソースが正常に機能するには、現在のマシンの 2 文字の地理的リージョンをバックエンド サービスに送信する必要があります (例: "US")。

すべてのソース契約条件に同意しますか?
[Y] はい  [N] いいえ:
```

メッセージに一度、応答し同意すると2度と表示されません。
そのため、開発環境では検証するため手動で応答していて、wingetコマンドを同意オプションなしで自動化。いざテスト環境や本番環境に適用すると「同意メッセージに返答していないため、処理が進まず期待通りの結果にならない」となってしまいます。

わたしが検証のために作成したインストーラー（inno setup）でも同意オプションなしでwingetコマンドを実行しています。下記が該当のissファイル（inno setupの設定ファイル）です。

[https://github.com/TakaakiU/PyTkinterToPSScript-UserDefined/blob/main/installer/inno-setup_installer.iss](https://github.com/TakaakiU/PyTkinterToPSScript-UserDefined/blob/main/installer/inno-setup_installer.iss)

## wingetコマンドに同意オプション

- インストールするパッケージのライセンス契約に同意する場合は `--accept-package-agreements`
- ソースリポジトリの契約条件に同意する場合は `--accept-source-agreements`

自動化する際は2つとも引数で指定する必要があります。

### 修正前

`inno-setup_installer.iss`で同意オプションをつけていなかった時。

```inno-setup
PSArgs := '-ExecutionPolicy Bypass -NoLogo -NonInteractive -WindowStyle Hidden -Command "winget install --id microsoft.powershell --version 7.5.1.0; exit $LASTEXITCODE"';
```

### 修正後

`inno-setup_installer.iss`で同意オプションを追加した結果。

```inno-setup
PSArgs := '-ExecutionPolicy Bypass -NoLogo -NonInteractive -WindowStyle Hidden -Command "winget install --id microsoft.powershell --version 7.5.1.0 --accept-package-agreements --accept-source-agreements; exit $LASTEXITCODE"';
```

## まとめ

wingetコマンドを使った自動化の際には、下記2つの同意オプションを引数で指定する必要がある

- `--accept-package-agreements`
    インストールするパッケージのライセンス契約に同意する場合のオプション
- `--accept-source-agreements`
    ソースリポジトリの契約条件に同意する場合のオプション

## 参考文献

[https://learn.microsoft.com/en-us/windows/package-manager/winget/install](https://learn.microsoft.com/en-us/windows/package-manager/winget/install)
