# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|username|string|null: false|
|email|string|null: false|
|password|string|null: false|
|provider|string|null: false|
|uid|string|null: false|

### Association
- has_many :copies


## copiesテーブル

|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|topic_id|references|foreign_key|
|user_id|references|foreign_key|

### Association
- belongs_to :topic
- belongs_to :user


## topicsテーブル

|Column|Type|Options|
|------|----|-------|
|theme_id|references|foreign_key|

### Association
- belongs_to :theme
- has_many :copies
- has_many_attached :images


## themesテーブル

|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|hash_tag|string|null: false|

### Association
- has_many :topics



