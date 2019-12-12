# README

# れこめんど

## 概要
おすすめしたいアイテムを、バーコードの数字（ISBNコード）から検索して投稿できます。  
他ユーザーの投稿に対し、お気に入り登録と、コメントを入れることができます。

## コンセプト
シンプルな商品レコメンドサイト

## バージョン
Ruby 2.6.5  
Rails 5.2.4

## 機能一覧
- [ ] ログイン機能
- [ ] ユーザー登録機能
  - [ ] 名前、メールアドレス、パスワードは必須
- [ ] パスワード再設定機能
- [ ] 投稿の一覧表示機能
  - [ ] コメント数を表示
  - [ ] お気に入り数を表示
- [ ] 投稿機能
  - [ ] 記事タイトル、記事内容は必須
- [ ] 記事編集機能
- [ ] 記事削除機能
  - [ ] 記事編集と記事削除は投稿者のみ可能
- [ ] 記事お気に入り機能
  - [ ] お気に入りについては、1つの記事に対して1人1回しかできない
  - [ ] 自分自身の記事にはお気に入りできない
- [ ] コメント投稿機能
- [ ] コメント削除機能
- [ ] コメント編集機能
  - [ ] コメント編集とコメント削除はコメントした本人のみ可能

## カタログ設計、ER図およびテーブル定義
https://drive.google.com/open?id=1uBQngaMcjrQkZvIRh6Y22zCWMChToWkrAwdxPP5jGWU

## 画面遷移図
https://drive.google.com/open?id=18fAN-9Sc3o5TYC8AZ9TuJbfs_YcLhjJLDOBKJCRZRrI

## 画面ワイヤーフレーム
https://drive.google.com/open?id=1fT7IexvX-tBXyuxc5TNdfU7nqPalPRkkfzwI1acPMXo

## 使用予定Gem
* devise
* ransack
* amazon-ecs

