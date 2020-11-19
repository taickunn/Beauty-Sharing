# README
<h1 align=“center”>Beauty Sharing</h1>

- 若者向けの美容共有サイト
- 私自身、美容特化のsnsってあまり無いなと思い、作成いたしました。
- 自分の美的価値観を色々なユーザーと共有しあえる<b>「情報共有サービス」</b>です。
- 作成期間 2020/9/28 ~ 2020/10/28
- https://rails-connect.com/
 ![top_page](https://i.gyazo.com/ec902bbeb37996a96d1e9c9b74bebef9.png)
<br>


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

