## アプリケーション名	
**totonoi**
## アプリケーション概要	
サウナの種類ごとにカテゴライズすることで、その日に入りたいサウナを直感的に検索できるアプリケーションです。ユーザーは未登録のサウナを投稿することもできます。
## URL
https://totonoi.onrender.com
## テスト用アカウント	
### Basic認証
* ID:admin  
* PASS:2222  
### テスト用アカウント
* ID:sauna1  
* PASS:a12345  
## 利用方法	
* アカウントを登録することができます。  
* サウナを投稿することができます。また、投稿者は編集と削除が可能です。  
* サウナ一覧には新着のサウナが表示され、サウナをクリックすると施設詳細を閲覧することができます。  
* サウナのタイプサウナのタイプから探すには８つにカテゴリ分けされたサウナのタイプが表示されます。  
* タイプをクリックすると、そのタイプサウナのみ表示することができます。  
## アプリケーションを作成した背景	
### ヒアリング対象者
* 性別：男性
* 年齢：20代半ば
* 仕事：営業
* 趣味：平日や休日にサウナを巡ること。平日は、営業先から直接サウナに行くことが多い。その日の気分に合ったサウナを探せるサイトを求めている。

### このアプリで解決したい課題
* 一目でそのサウナの情報がわかり、行きたいサウナを直ぐに見つけられる。
* カテゴリ検索ができる
* サウナの居心地で検索できる
* 現在地から近いサウナを検索できる
## 洗い出した要件
[要件定義](https://docs.google.com/spreadsheets/d/1r9txovVZnErDrK6COW6YvjeqGi0ZhQSXKq-E63nCkZM/edit?usp=sharing)
## 機能説明
### ユーザー登録機能
[![Image from Gyazo](https://i.gyazo.com/8a901a57a5b43764a7b7cf0409d63d4d.png)](https://gyazo.com/8a901a57a5b43764a7b7cf0409d63d4d)
### サウナ登録機能
[![Image from Gyazo](https://i.gyazo.com/5fd879064dcf24478decae95536f7106.gif)](https://gyazo.com/5fd879064dcf24478decae95536f7106)
### 新着サウナ表示機能
[![Image from Gyazo](https://i.gyazo.com/5d7753bd5338d99164cf26693a2b64cf.jpg)](https://gyazo.com/5d7753bd5338d99164cf26693a2b64cf)
### カテゴリ検索機能（タイプ検索機能）
[![Image from Gyazo](https://i.gyazo.com/3b7a846b6d69c21dca4874da78f8c057.jpg)](https://gyazo.com/3b7a846b6d69c21dca4874da78f8c057)
## 実装予定の機能
* 現在地から近いサウナを検索する機能
* その日の気分でサウナを検索する機能
* ユーザーのお気に入りのタイプを登録でき、オススメのサウナを表示する機能
## データベース設計 
[![Image from Gyazo](https://i.gyazo.com/e7563fb2d5c7d6232e186545e685bf0e.png)](https://gyazo.com/e7563fb2d5c7d6232e186545e685bf0e)
## 画面遷移図	
[![Image from Gyazo](https://i.gyazo.com/908533bb8815773cb2bfafd393e7d0a6.png)](https://gyazo.com/908533bb8815773cb2bfafd393e7d0a6)
## 開発環境	
### 開発言語
* Ruby
* JavaScript

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
