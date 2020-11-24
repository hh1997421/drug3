# アプリケーション名	drug3

## アプリケーション概要   

                症状から、あなたの症状に合った薬が表示されます。
                検索結果の画面から購入サイトに遷移できます。また、近隣薬局を表示してくれます。
                また、シンプルに薬のことについて管理、相談できるアプリになっています。

## URL	             

>>https://drug-31046.herokuapp.com/

##テスト用アカウント  

- email:abab@gmail.com 
- パスワード:12abab	

>Basic認証 

- ID:furima 
- パスワード:7650 

## 利用方法	  

                 症状、眠気の有無、価格帯から選択。検索ボタンをクリックすると、あなたの症状に合った薬が表示されます。
                 検索結果の画面から購入サイトに遷移できます。また、近隣薬局を表示してくれます。
                 会員登録されていれば、お薬手帳管理・ビデオ相談・つぶやき相談を利用できます。

## 目指した課題解決

                 このアプリの目的は、「素早く薬を見つけるすること」です。
                 現在、多くの検索サイトでは自分の症状から数多くある薬を見つけるまでに時間がかかります。
                 風邪を引いたけど、仕事で病院に行く時間がないうえに眠くなったら困るなど、どの薬を選んだらいいかわからない。自分で治したい。

                 このようなこと軽い諸症状の時に思いませんか？

                 ネットで探してみたけど、結局どの薬が良いかわからない。それはもちろん、症状の内容や眠気は人によってバラバラだからです。 
                 しかし、本当の患者ファーストな医療を目指すのであれば、自分で素早く薬を見つけて、早く治し日常生活を豊に過ごしたいはずです。 
                 このアプリは、そんな患者ファーストな医療を実現する一助となれるよう成長していきます。

                 セルフメディケーションを推進し、社会保障費の拡大を抑える「医療費低減の受け皿」として機能していきたいです。

## 洗い出した要件	

1. 検索機能 
2. マップ導入 
3. チャット機能 
4. ビデオ通話 
5. ユーザー管理機能 
6. 問い合わせ機能 
7. 薬管理機能

## 実装した機能についてのGIFと説明

1. 薬の検索と結果画面(商品名,商品購入リンク,周辺薬局を表示)

[![Image from Gyazo](https://i.gyazo.com/a42a65ee9283433d4ecbc54e5d75f0e0.gif)](https://gyazo.com/a42a65ee9283433d4ecbc54e5d75f0e0)

2.  お薬手帳（会員登録したユーザーのみ）

[![Image from Gyazo](https://i.gyazo.com/92b4b0bc44a1a2c72ee63bd84f52f6bc.gif)](https://gyazo.com/92b4b0bc44a1a2c72ee63bd84f52f6bc)

3.  コメント相談(会員登録したユーザーのみ)

[![Image from Gyazo](https://i.gyazo.com/713cfcb6f5e0447eacfb574e7f99cc1d.gif)](https://gyazo.com/713cfcb6f5e0447eacfb574e7f99cc1d)


## 実装予定の機能	

                  閲覧履歴やデータの追加など、細かい修正を行う予定です。

## データベース設計	

[![Image from Gyazo](https://i.gyazo.com/9d5e80499ee3f1f0bd06ee8226ee74bd.png)](https://gyazo.com/9d5e80499ee3f1f0bd06ee8226ee74bd)

## ローカルでの動作方法-ターミナル

- % git clone https://github.com/we-b/drug3_app.git
- % cd drug3
- % bundle install
- % yarn install 
- % rails db:create
- % rails db:migrate
- % rails s

                  環境:ruby on rails バージョン:ruby '2.6.5'

# テーブル設計

## users テーブル

| Column         | Type   | Options     |
| -------------- | ------ | ----------- |
| nickname       | string | null: false |
| email          | string | null: false |
| password       | string | null: false | 


### Association

- belongs_to :history

## products テーブル

| Column         | Type   | Options     |
| -------------- | ------ | ----------- |
| status         | string | null: false |
| name           | string | null: false |
| sleep          | string | null: false | 
| price          | string | null: false |
| information    | string | null: false | 

### Association

- belongs_to :history

## histories テーブル

| Column         | Type   | Options     |
| -------------- | ------ | ----------- |
| user_id        | string | null: false |
| products_id    | string | null: false |

### Association

- has many :users
- has many :products

## comments テーブル

| Column         | Type   | Options     |
| -------------- | ------ | ----------- |
| text           | string | null: false |