## アプリケーション名	
totonoi
## アプリケーション概要	このアプリケーションでできることを記載。
サウナの特徴を居心地でカテゴリ分けすることでサウナーがその日の気分で行きたいサウナを検索できるアプリケーション
## URL※	デプロイ済みのURLを記載。デプロイが済んでいない場合は、デプロイが完了次第記載すること。
https://totonoi.onrender.com
## テスト用アカウント	ログイン機能等を実装した場合は、ログインに必要な情報を記載。またBasic認証等を設けている場合は、そのID/Passも記載すること。
ID:sauna1
PASS:a12345
## 利用方法	このアプリケーションの利用方法を記載。説明が長い場合は、箇条書きでリスト化すること。
カテゴリ検索に特化したアプリです。トップページからサウナのタイプをクリックしサウナを探すことができます。
## アプリケーションを作成した背景	このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記載。
・性別：男性
・年齢：20代
・仕事：営業営業先から直帰する機会が多く、仕事終わりのサウナ探しが日課
・趣味：平日や休日にサウナを巡ること。平日は現在地から近いサウナに、休日は遠征に行くことが多い。

サウナに関する課題
・温度や湿度によってサウナの居心地が変わるが、今日の気分に合わせたサウナを探すのが難しい。

## 洗い出した要件	要件定義をまとめたスプレッドシートのリンクを記載。
https://docs.google.com/spreadsheets/d/1r9txovVZnErDrK6COW6YvjeqGi0ZhQSXKq-E63nCkZM/edit?usp=sharing
## 実装した機能についての画像やGIFおよびその説明※	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記載。画像はGyazoで、GIFはGyazoGIFで撮影すること。
[![Image from Gyazo](https://i.gyazo.com/3b7a846b6d69c21dca4874da78f8c057.jpg)](https://gyazo.com/3b7a846b6d69c21dca4874da78f8c057)
## 実装予定の機能	洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記載。
## データベース設計	ER図を添付。
## 画面遷移図	画面遷移図を添付。
## 開発環境	使用した言語・サービスを記載。
## ローカルでの動作方法※	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記載。
## 工夫したポイント※	制作背景・使用技術・開発方法・タスク管理など、企業へＰＲしたい事柄を記載。

## usersテーブル
| Column              | Type       | Options                       |
| ------------------- | ---------- | ----------------------------- |
| nickname            | string     | null: false                   |
| email               | string     | null: false,unique: true      |
| encrypted_password  | string     | null: false                   |
### Association
- has_many :saunas

## saunasテーブル
| Column                | Type        | Options                         |
| --------------------- | ----------- | ------------------------------- |
| user                  | references  | null: false, foreign_key: true  |
| name                  | string      | null: false                     |
| text                  | text        | null: false                     |
| price                 | integer     | null: false                     |
| temperature           | integer     | null: false                     |
| humidity              | integer     | null: false                     |
| cool_bath_temperature | integer     | null: false                     |
| category_id           | integer     | null: false                     |
| postcode              | string      | null: false                     |
| prefecture_id         | integer     | null: false                     |
| city                  | string      | null: false                     |
| block                 | string      | null: false                     |
| building              | string      |                                 |
| phone_number          | string      | null: false                     |
### Association
- belongs_to :user
- belongs_to :category
- belongs_to :prefecture
