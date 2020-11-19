# README
<h1 align=“center”>Beauty Sharing</h1>
- 若者向けの美容共有サイト
- 私自身、美容特化のsnsってあまり無いなと思い、作成いたしました。
- 自分の美的価値観を色々なユーザーと共有しあえる<b>「情報共有サービス」</b>です。
- 作成期間 2020/9/28 ~ 2020/10/28
- https://rails-connect.com/
 ![top_page](https://i.gyazo.com/ec902bbeb37996a96d1e9c9b74bebef9.png)
<br>
---
## :paperclip: 主な使用言語
---
<a><img src=“https://user-images.githubusercontent.com/39142850/71774533-1ddf1780-2fb4-11ea-8560-753bed352838.png” width=“70px;” /></a> <!-- rubyのロゴ -->
<a><img src=“https://user-images.githubusercontent.com/39142850/71774548-731b2900-2fb4-11ea-99ba-565546c5acb4.png” height=“60px;” /></a> <!-- RubyOnRailsのロゴ -->
<a><img src=“https://cdn.svgporn.com/logos/html-5.svg” height=“60px;” /></a> <!-- htmlのロゴ -->
<a><img src=“https://cdn.svgporn.com/logos/css-3.svg” height=“60px;” /></a> <!-- cssのロゴ -->
<a><img src=“https://cdn.svgporn.com/logos/javascript.svg” height=“60px” /></a> <!-- JavaScriptのロゴ -->
<a><img src=“https://syncer.jp/storage/web/brand-logos/static/dst/github-logo-001.png” height=“60px;” /></a> <!-- GitHubのロゴ -->
<a><img src=“https://www.docker.com/sites/default/files/d8/styles/role_icon/public/2019-07/Docker-Logo-White-RGB_Horizontal.png?itok=cFIHFZiP” height=“60px;” /></a> <!-- Dockerのロゴ -->
<a><img src=“https://user-images.githubusercontent.com/39142850/71774786-37825e00-2fb8-11ea-8b90-bd652a58f1ad.png” height=“60px;” /></a> <!-- AWSのロゴ -->
<a><img src=“https://assets.brandfolder.com/otz73u-2kwjjs-3sbkgf/v/799652/view@2x.png?v=1592401195” height=“60px;” /></a> <!-- CircleCIのロゴ -->
---
<br>
<img width=“1440" alt=“スクリーンショット 2020-10-16 10 40 31” src=“https://i.gyazo.com/8691aba83173c39626779080dabb3399.png”>
## 機能紹介
- 新規会員登録・ログインをすると、用語の参照先URLを投稿できます。
- 新規会員登録、ログインがお済みでない方も用語一覧や詳細は閲覧できます。
## サイトURL紹介
デプロイ:AWS
- アドレス:https://rails-connect.com/
デプロイ:Heroku
- アドレス:https://rails-connect-app.herokuapp.com/
## テスト用アカウント
1.マスター用
- email: master_user@gmail.com
- password: master0000
2.閲覧用
- email: test_user@gmail.com
- password: test0000
3.ゲストユーザー
- ゲストログイン機能
- 登録のお手間を省きログインして頂けます。
## :globe_with_meridians: インストール方法
1.このリポジトリを複製<br>
`$ git clone https://github.com/xfm04x/rails-connect.git`
2.インストールしたリポジトリに移動<br>
`$ cd rails-connect.git`
3.gemをアプリケーションに適用<br>
`$ bundle install`<br>
4.DBの作成&反映<br>
`$ rails db:create`<br>
`$ rails db:migrate`<br>
5.カテゴリ一覧の反映<br>
`$ rails db:seed`<br>
6.アプリケーションの起動<br>
`$ rails s`<br>
:point_right:`http://localhost:3000`
***デモ(投稿)***
![デモ](https://i.gyazo.com/476bb4ad97bb5d264a89e384a28eab47.gif)
***デモ(検索）***
![デモ](https://i.gyazo.com/9c8e6bccc2cf7fb582e626fdc150bf8b.gif)
## 機能
- ユーザー管理機能
- ゲストユーザー機能(ゲストの方にお手間を取らせない為)
- 用語投稿機能
- URLアクセス機能(投稿したURLから直接参照先へアクセスする為)
- 詳細閲覧機能
- 投稿編集削除機能
- ジャンル別閲覧機能
- 検索機能
- いいね機能(投稿者を評価する為)
## 使用技術
1. AWS/本番環境（EC2, ACM, VPC, EIP, IAM, Route53）
2. Docker,Docker-compose（開発環境）
3. CircleCI（デプロイ）
5. MySQL
6. puma
7. Javascript
8. Ruby 2.6.5, Rails 6.0.3.3
9. Mac Catalina(10.15.6)
10. Amazon Linux
11. VSCode, Vim
## 追加実装予定
1. AWS/本番環境（S3）
2. CircleCI（テスト）
3. RSpec（テストフレームワーク）
---
# :page_facing_up: DB設計
## ER図
![er](https://i.gyazo.com/94939feb0bebbf9f2aa62d55a7ca4e97.png)


## users
|種類        | Column     | Type       | Options      |
|-----------|------------|-------------|--------------|
|ニックネーム| nickname   | string      | null: false  |
|メールアドレス| email  | string  | null: false, uniqueness: true       |
|パスワード| password  | string  | null: false |
|プロフィール| profile   | text     |           |
|プロフィール画像| profile_image_id     | string       |     |
### association
### association
 * has_many :comments
 * has_many :mantweet, dependent: :destroy
 * has_many :favorites, dependent: :destroy
 * has_many :womantweet, dependent: :destroy
 * has_many :secondfavorites, dependent: :destroy
 * attachment :profile_image
  ## posts
|種類        | Column     | Type       | Options      |追記           |
|-----------|------------|-------------|--------------|--------------|
|           |  name  | string      |              |  |
|           | description      | text      |              |   |
## man-tweets
|種類        | Column     | Type       | Options      |追記           |
|-----------|------------|-------------|--------------|--------------|
|画像        |  image_id  | string      |              |  |
|名前        | title      | string      |              |   |
|説明        | body       | text        |              |
|ユーザーid   | user_id    | integer     |              |   |
### association
* attachment :image
* belongs_to :user
* has_many :comments
* has_many :favorites, dependent: :destroy

## woman-tweets
|種類        | Column     | Type       | Options      |追記           |
|-----------|------------|-------------|--------------|--------------|
|画像        |  image_id  | string      |              |  |
|名前        | title      | string      |              |   |
|説明        | body       | text        |              |
|ユーザーid   | user_id    | integer     |              |   |
### association
* attachment :image
* belongs_to :user
* has_many :secondcomments
* has_many :secondfavorites, dependent: :destroy
## comments
|種類        | Column     | Type       | Options      |
|-----------|------------|-------------|--------------|
|| user_id  | integer    | |
|| mantweet_id| integer    | |
|| text     | text       | |
### association
* belongs_to :mantweet
* belongs_to :user
## second-comments
|種類        | Column     | Type       | Options      |
|-----------|------------|-------------|--------------|
|| user_id  | integer    | |
|| womantweet_id| integer    | |
|| text     | text       | |
### association
* belongs_to :womantweet
* belongs_to :user
## favorite
|種類        | Column     | Type       | Options      |
|-----------|------------|-------------|--------------|
|| user_id  | integer    | |
|| mantweet_id| integer    | |
|| text     | text       | |
### association
* belongs_to :user
* belongs_to :mantweet
* validates_uniqueness_of :mantweet_id, scope: :user_id
## second-favorite
|種類        | Column     | Type       | Options      |
|-----------|------------|-------------|--------------|
|| user_id  | integer    | |
|| womantweet_id| integer    | |
|| text     | text       | |
### association
* belongs_to :user
* belongs_to :womantweet
* validates_uniqueness_of :womantweet_id, scope: :user_id
* ...

