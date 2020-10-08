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
* ...
