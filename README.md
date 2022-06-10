# README

# アプリケーション名
  「noverea（ノべリア）」
<br>
<br>

# アプリケーションの概要
  ・物語の舞台となった地域別に出版済小説作品の投稿・検索
  ・各地域・小説作品へのコメント機能（実際にその地域を訪れた際の写真等の投稿も可能）
<br>
<br>

# URL
デプロイ準備中
<br>
<br>

# 利用方法
  
<br>
<br>

# アプリケーションを作成した背景
  当アプリケーションの目的は「新たな小説との出会いを提供すること」です。
  その切り口は、「物語の中で舞台となっている地域」としています。
  アプリ名の「noverea（ノべリア）」は、「novel × area」を由来とする造語です。

  旅行が趣味の制作者は、旅行予定地を舞台にした小説を事前に読み、その地への思い入れを深くすることで、旅行をより有意義なものにしてきました。
  しかし、ある特定の地域を舞台にした小説、それも自分の好みに合った小説を簡単に探す場が少ないと長らく感じていました。

  この経験から、「小説」「物語の舞台となった地域」に関する情報の集約地となり得るアプリケーションを制作致しました。
  「旅行先」に限らず、地域と人との関係には、様々な形があると思います。「住んでいる地域」「勤務先」「通勤通学の途中のあの場所」「友人と訪れた思い出の地」「テレビで見て素敵だと思ったあそこ」エトセトラ。
  気になる地域や馴染みある場所、そこを舞台にした小説との出会いを、このアプリケーションを通じて見つけていただきたいと望んでおります。

<br>
<br>
  
# 洗い出した要件
  
<br>
<br>
  
# 実装済機能について
  
<br>
<br>
  
# 実装予定の機能
  
<br>
<br>
  
# データベース設計
## novels テーブル

| Column             | Type       | Options               |
| ------------------ | ---------- | --------------------- |
| title              | string     | null: false           |
| auther             | string     | null: false           |
| release_year       | string     |                       |
| genre_id           | integer    |                       |
| another_area       | string     |                       |
| spot               | text       |                       |
| synopsis           | text       |                       |
| mediamix           | text       |                       |
| user               | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- has_many :areas, through: :novel_areas
- has_many :novel_comments
- has_many :favorite_novels

<br>

## novel_areas テーブル

| Column             | Type       | Options                         |
| ------------------ | ---------- | ------------------------------- |
| novel              | references | null: false, foreign_key: true  |
| area               | references | null: false, foreign_key: true  |

### Association
- belongs_to :novel
- belongs_to :area

<br>

## areas テーブル

| Column             | Type       | Options               |
| ------------------ | ---------- | --------------------- |
| country            | string     | null: false           |
| prefecture         | string     |                       |
| city               | string     |                       |


### Association
- has_many :novels, through: :novel_areas
- has_many :area_comments
- has_many :favorite_areas

<br>

## users テーブル

| Column             | Type       | Options                 |
| ------------------ | ---------- | ----------------------- |
| email              | string     | null: false,unique: true|
| encrypted_password | string     | null: false             |
| nickname           | string     | null: false             |
| profile            | text       |                         |
| favorite_novel     | text       |                         |
| favorite_auther    | text       |                         |
| favorite_area      | text       |                         |

### Association
- has_many :novels
- has_many :novel_comments
- has_many :area_comments
- has_many :favorite_novels
- has_many :favorite_areas
- has_many :follows

<br>

## novel_comments テーブル

| Column             | Type       | Options               |
| ------------------ | ---------- | --------------------- |
| comment            | string     | null: false           |
| image              | string     |                       |
| novel              | references | null: false, foreign_key: true  |
| user               | references | null: false, foreign_key: true  |

### Association
- belongs_to :novel
- belongs_to :user

<br>

## area_comments テーブル

| Column             | Type       | Options               |
| ------------------ | ---------- | --------------------- |
| comment            | string     | null: false           |
| image              | string     |                       |
| area               | references | null: false, foreign_key: true  |
| user               | references | null: false, foreign_key: true  |

### Association
- belongs_to :area
- belongs_to :user

<br>

## favorite_novels テーブル

| Column             | Type       | Options               |
| ------------------ | ---------- | --------------------- |
| novel              | references | null: false, foreign_key: true  |
| user               | references | null: false, foreign_key: true  |

### Association
- belongs_to :novel
- belongs_to :user

<br>

## favorite_areas テーブル

| Column             | Type       | Options               |
| ------------------ | ---------- | --------------------- |
| area               | references | null: false, foreign_key: true  |
| user               | references | null: false, foreign_key: true  |

### Association
- belongs_to :area
- belongs_to :user

<br>

## follows テーブル

| Column             | Type       | Options               |
| ------------------ | ---------- | --------------------- |
| follower_id        | references | null: false, foreign_key: true  |
| followee_id        | references | null: false, foreign_key: true  |

### Association
- belongs_to :user

<br>
<br>
  
# 画面遷移図
  
<br>
<br>
  
# 開発環境
  
<br>
<br>
  
## 工夫したポイント
  
  
  