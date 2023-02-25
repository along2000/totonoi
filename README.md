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
