# README

## 概要
このアプリはホロライブ所属の桃鈴ねねさんのファンサイト風アプリです。<br>
YouTube、TwitterのAPIを使用し、チャンネルの動画情報や切り抜き動画、Twitterにアップされているファンアートを一覧にしています。<br>
新しく桃鈴ねねさんのファンになった人に彼女の魅力がより多く伝わるように作成しました。<br>
<img width="1440" alt="スクリーンショット 2021-07-06 18 36 41" src="https://user-images.githubusercontent.com/84561429/126415774-603b8b15-d89c-4b27-bcc4-4c2db537773d.png">


## 紹介動画

![fansite](https://user-images.githubusercontent.com/84561429/126730711-94301c13-8521-4399-b3c3-092d581ac15f.gif)

## URL
http://fansite.konnene-matanene.com

## 利用方法
上記URLにアクセスしていただくことで、ご利用いただけます。<br>
各ページの紹介

- NEWS
  - 桃鈴ねねさんのライブ情報や今後のライブ情報などを記載しています
- ABOUT
  - 桃鈴ねねさんの紹介ページになっています。モデラーなども確認することができます。
-　ARCHIVES
  - 桃鈴ねねさんのYouTubeチャンネル(https://www.youtube.com/channel/UCAWSyEs_Io8MtpY3m-zqILA) にアップロードされている動画情報を見ることができます
  - TOPページにて確認できる動画情報は再生数が多い動画です
  - 「その他のアーカイブはこちら」から全ての動画情報を見ることができ、タグ検索、ワード検索をすることができます。
- MUSICS
  - これまで発表された桃鈴ねねさんのオリジナル曲や歌ってみた動画を確認することができます。
  - 「その他の歌枠のまとめはこちら」から桃鈴ねねさんのYouTubeチャンネルにて、配信された「歌枠」から曲ごとの情報をまとめたページになります。
- CLIPS
  - 桃鈴ねねさんのYouTubeチャンネルにて配信された配信から一部分を切り取った動画、切り抜き動画の情報を掲載しています。
  -  「その他の切り抜き動画はこちら」からClipsテーブルに登録されているデータ全てを確認することができます
- LINKS
  - 桃鈴ねねさんに関するリンクを確認することができます。

## 使用技術
- フロントエンド：HTML・CSS・Javascript
- サーバーサイド：Ruby on rails
- インフラ：AWS(インフラ構成図は後述)
- API取得：Python
  - API取得用のスクリプトについては下記URL
  - https://github.com/hedgehog-genki/apiget
- DB：MySQL

## インフラ構成図

[![Image from Gyazo](https://i.gyazo.com/1bfeab1210564231c484cc37e3c08f06.jpg)](https://gyazo.com/1bfeab1210564231c484cc37e3c08f06)

## 制作意図

背景としては、自身がYouTubeやTwitterで桃鈴ねねさんの情報を見たいときに関連性のない情報があったり、どの動画を見るのがおすすめなのかということが<br>
わかりにくかったこと、さらに桃鈴ねねさんのファンになったばかりの人により正確にわかりやすく桃鈴ねねさんの魅力を伝えたいと感じました。<br>
最も制作した意図としては制作を通じて、桃鈴ねねさんを応援したいという思いから制作を行いました。

## 

## スタッフ
- フロント・サーバーサイド・インフラ構築：ハリネズミの日記(https://twitter.com/hedgehog_nene)
- トップページイラスト制作：meri / めり(https://twitter.com/hmn_mrr)

## テーブル設計

### archives テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| archiveid          | string | null: false |
| archivetitle       | string | null: false |
| ardhiveurl         | string | null: false |
| archiveview        | string | null: false |
| archiveimg.        | string | null: false |
| archivepostdate    | string | null: false |

### musics テーブル

| Column.            | Type   | Options     |
| ------------------ | ------ | ----------- |
| musicid            | string | null: false |
| musictitle         | string | null: false |
| musicauthor        | string | null: false |
| musicurl           | string | null: false |
| musicimg           | string | null: false |

### clips テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| clipid             | string | null: false |
| cliptitle          | string | null: false |
| clipurl            | string | null: false |
| clipview           | string | null: false |
| clipimg.           | string | null: false |
| clippostdate       | string | null: false |

### fanarts テーブル

| Column    | Type   | Options     |
| -------   | ------ | ----------- |
| fanartid  | string | null: false |
| fanarturl | string | null: false |
| fanartuser| string | null: false |
