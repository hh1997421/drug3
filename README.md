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