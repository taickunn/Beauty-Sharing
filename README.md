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
|苗字| family_name    | string     | null: false           |
|名前| first_name       | string       | null: false       |
|苗字（かな）| family_name_kana    | string     | null: false      |
|名前（かな）| first_name_kana | string   | null: false    |
|生年月日| birth_day   | date     | null: false     |
### association
* belongs_to :post
* has_many :comments
* has_many :man-tweets
* has_many :woman-tweets
## man-tweets
|種類        | Column     | Type       | Options      |追記           |
|-----------|------------|-------------|--------------|--------------|
|画像|    |  | null: false  | ActiveStorage |
|名前| name | string  | null: false ||
|説明| description  | text | null: false |
|| user | references | null: false, foreign_key: true ||
|| post | references | null: false, foreign_key: true  |
### association
* belongs_to :user
* has_many :comments
* has_one_attached: image
* has_many :posts
## woman-tweets
|種類        | Column     | Type       | Options      |追記           |
|-----------|------------|-------------|--------------|--------------|
|画像|    |  | null: false  | ActiveStorage |
|名前| name | string  | null: false ||
|説明| description  | text | null: false |
|| user | references | null: false, foreign_key: true ||
|| post | references | null: false, foreign_key: true  |
### association
* belongs_to :user
* has_many :comments
* has_one_attached: image
* has_many :posts
## Comments
|種類        | Column     | Type       | Options      |
|-----------|------------|-------------|--------------|
|| comment   | string      | null: false  |
|| user | references | null: false, foreign_key: true  |
|| man-tweet | references | null: false, foreign_key: true  |
|| woman-tweet | references | null: false, foreign_key: true  |
### association
* belongs_to :user
* belongs_to :man-tweet
* belongs_to :woman-tweet
## posts
|種類        | Column     | Type       | Options      |
|-----------|------------|-------------|--------------|

### association
* has_many :users
* has_many :man-tweets
* has_many :woman-tweets
* ...
