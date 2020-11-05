# README
This README would normally document whatever steps are necessary to get the
application up and running.
Things you may want to cover:
* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions

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

