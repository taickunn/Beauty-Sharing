# README
<h1 align=“center”>アプリ名</h1>
Beauty Sharing

<h1 align=“center”>概要</h1>
- 若者向けの美容共有サイト
- 私自身、美容特化のsnsってあまり無いなと思い、作成いたしました。
- 自分の美的価値観を色々なユーザーと共有しあえる<b>「情報共有サービス」</b>です。
- 作成期間 2020/9/28 ~ 2020/10/28

<h1 align=“center”>本番環境</h1>
https://beauty-sharing.herokuapp.com/

ログイン情報（テスト用）

・email: sample@sample.com
・password: test123

<h1 align=“center”>制作背景</h1>

<h1 align=“center”>DEMO</h1>

<h1 align=“center”>工夫したポイント</h1>
・主なターゲットが、弱年齢層なので、使いやすいと言うよりは少し遊び心のあるデザインに致しました
・メンズとレディースを分ける事によってほしい情報が一気に絞れるように致しました
・ヘアスタイルとメイクなどを選択する事によってさらに情報絞るように致しました

<h1 align=“center”>使用技術（開発環境）</h1>
<h2>バックエンド</h2>
Ruby,Ruby on Rails

<h2>フロントエンド</h2>
HTML,CSS,Javascript,JQuery,Ajax

<h2>データベース</h2>
MySQL,SequelPro

<h2>インフラ</h2>
Capistrano,Docker(開発環境)

<h2>webサーバー（本番環境）</h2>

<h2>アプリケーションサーバー（本番環境）</h2>

<h2>ソース管理</h2>
GitHub,GitHubDesktop

<h2>テスト</h2>
RSpec

<h2>エディタ</h2>
VSCode

<h1 align=“center”>課題や今後実装したい機能</h1>
・自分の探している情報を素早くキャッチするために検索機能を追加
・情報収集のために美容系のニュース機能
・コミュニケーションの為のフォロー＆DM機能

<h1 align=“center”>DB設計</h1>


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

