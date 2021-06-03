# README
このアプリはホロライブ所属の桃鈴ねねさんのファンサイト風アプリです。
YouTube、TwitterのAPIを使用し、チャンネルの動画情報や切り抜き動画、Twitterにアップされているファンアートを一覧にしています。
新しく桃鈴ねねさんのファンになった人に彼女の魅力がより多く伝わるように作成しました。

#使用技術
・フロント：Ruby on rails
・インフラ：AWS
・API取得：Python
・DB：MySQL

#Staff
コーディング：ハリネズミの日記(https://twitter.com/hedgehog_nene)
TOP画像：meri / めり(https://twitter.com/hmn_mrr)

# テーブル設計

## archives テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| id                 | string | null: false |
| title              | string | null: false |
| url                | string | null: false |
| view               | string | null: false |
| thumbnail          | string | null: false |
| postdate           | string | null: false |

## songs テーブル

| Column.            | Type   | Options     |
| ------------------ | ------ | ----------- |
| id                 | string | null: false |
| title              | string | null: false |
| songer             | string | null: false |
| url                | string | null: false |
| thumbnail          | string | null: false |

## clips テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| id                 | string | null: false |
| title              | string | null: false |
| url                | string | null: false |
| view               | string | null: false |
| thumbnail          | string | null: false |
| postdate           | string | null: false |

## arts テーブル

| Column  | Type   | Options     |
| ------- | ------ | ----------- |
| id      | string | null: false |
| url     | string | null: false |
| user    | string | null: false |

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

* ...
