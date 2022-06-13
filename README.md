# README

# アプリケーション名
    「noverea（ノべリア）」
<br>
<br>

# アプリケーションの概要
  - 物語の舞台となった地域別に出版済小説作品の投稿・検索
  - 各地域・小説作品へのコメント機能（実際にその地域を訪れた際の写真等の投稿も可能）
  - アプリケーション名の「noverea（ノべリア）」は、「novel × area」を由来とする造語
<br>
<br>

# URL
デプロイ準備中
<br>
<br>

# 利用方法
  - 検索機能を活用し、次に読む小説選びの場として利用
  - お気に入り機能/コメント機能を活用し、ご自身の読書履歴保存の場として利用
  - コメント機能の画像投稿機能を活用し、ご自身が訪れた「物語の中で舞台となった地域」を記録する場として利用（聖地巡礼の記録）
<br>
<br>

# アプリケーションを作成した背景
  当アプリケーションの目的は「新たな小説との出会いを提供すること」です。
  その切り口は、「物語の中で舞台となっている地域」としています。
  アプリ名の「noverea（ノべリア）」は、「novel × area」を由来とする造語です。

  旅行が趣味の制作者は、旅行予定地を舞台にした小説を事前に読み、その地への思い入れを深くすることで、旅行をより有意義なものにしてきました。
  しかし、ある特定の地域を舞台にした小説、それも自分の好みに合った小説を手軽に探す場が少ないと長らく感じていました。

  この経験から、「小説」「物語の中で舞台となった地域」に関する情報の集約地となり得るアプリケーションを制作致しました。
  「旅行先」に限らず、地域と人との関係には、様々な形があると思います。「住んでいる地域」「勤務先」「通勤通学の途中のあの場所」「友人と訪れた思い出の地」「テレビで見て素敵だと思ったあそこ」エトセトラ。
  当アプリケーションが、気になる地域や馴染みある場所、そこを舞台にした小説との出会いのきっかけとなりますと幸いです。

<br>
<br>
  
# 要件定義
## 小説（作品）管理機能
### 投稿機能  -小説の情報を投稿する-
- 小説のタイトル/作者などの基本情報と、小説の舞台となった地域を入力して「登録」ボタンを押下すると、新規情報を登録できる。
- 小説の舞台となった地域（国・都道府県/州）は、プルダウン形式で選択が可能。市区町村以下、あるいはプルダウンにない地域を登録したい場合は、その他地域欄にテキスト形式で入力する。
### 一覧表示機能  -登録された小説を一覧で表示する-
- 作品情報が表示されたBOX（タイトル、作者、発売年）を押下すると、作品詳細ページに遷移する。
- 作品情報が表示されたBOX内の舞台となった地域を押下すると、地域詳細ページに遷移する。
- indexには最近の投稿１０件を一覧表示する。
### 詳細表示機能（小説）  -小説の詳細情報を表示する-
- 作品の登録情報（タイトル、作者、発売年、他）と、舞台となった地域、その作品へのコメントを表示する。
- 作品情報が表示されたBOXの舞台となった地域を押下すると、地域詳細ページに遷移する。
- ログイン状態のユーザー全てに編集ボタンが表示される。編集ボタンを押下すると、編集画面に遷移する。
- ログイン状態のユーザーには、お気に入り登録ボタンが表示される。お気に入り登録ボタンを押下すると、当該作品をお気に入りに登録できる。
### 詳細表示機能（地域）  -地域の詳細情報を表示する-
- その地域に登録された作品と、その地域へのコメントを表示する。
- 作品情報が表示されたBOX（タイトル、作者、発売年）を押下すると、作品詳細ページに遷移する。
- ログイン状態のユーザーには、お気に入り登録ボタンが表示される。お気に入り登録ボタンを押下すると、当該地域をお気に入りに登録できる。
### 編集機能  -登録済の小説情報を編集する-
- ログインしているユーザーは、登録済の小説情報を編集することができる。
- 編集履歴は保存される。
- ログインしていないユーザーが編集ページに遷移しようとすると、一覧ページにリダイレクトされる。

<br>
  
## 検索機能
### 簡易検索機能  -単語を入力して、検索する-
- トップページの検索BOXに文字入力のうえ検索ボタンを押下すると、検索したテキストを含む小説が一覧で表示される。
### 詳細検索機能  -プルダウンから条件を選択して検索する-
- 詳細検索画面にて、小説のジャンルや地域をプルダウンで選択したうえで検索ボタンを押下すると、選択した条件に合致する小説が一覧で表示される。

<br>

## ユーザー管理機能
### 新規登録機能  -ユーザー新規登録する-
- 必要な情報を適切に入力して「会員登録」ボタンを押下すると、ユーザーの新規登録ができる。
### 新規登録機能  -ユーザーログインする-
- 必要な情報を適切に入力して「ログイン」ボタンを押下すると、ユーザーログインができる。
### マイページ機能  -ユーザーマイページを表示する-
- ログイン時、当該アカウントのマイページには、アカウントの登録情報・お気に入り登録済の小説/地域・フォロー/フォロワー・コメント履歴を表示する。
- 他ユーザーのマイページには、相手ユーザーのプロフィール等の情報・お気に入り登録済の小説/地域・フォロー/フォロワー・コメント履歴を表示する。

<br>

## コメント管理機能
### 投稿機能  -各小説・各地域にコメント投稿できる-
- ログインしているユーザーは、各小説・各地域に設けられたコメント欄に入力の上、投稿するボタンを押下すると、コメント投稿ができる。
- コメントには、画像を添付することができる。
### 一覧表示機能  -投稿されたコメントを一覧表示する-
- 各小説・各地域情報に投稿されたコメントを、対応する小説詳細ページ/地域詳細ページに表示する。
### 削除機能  -投稿したコメントを削除する-
- 当該コメントを投稿したユーザーのみ、コメントの削除ができる。

<br>

## フォロー管理機能
### 登録機能  -他ユーザーをフォローする-
- ログインしているユーザーは、他ユーザーをフォローすることができる。
### 一覧表示機能  -フォロー/フォロワー一覧を表示する-
- ログインしているユーザーのフォローしているアカウント/フォロワーを表示する。
### 削除機能  -他ユーザーのフォローを解除する-
- ログインしているユーザーは、他ユーザーのフォローを解除することができる。

<br>

## お気に入り管理機能
### お気に入り登録機能 -各小説・各地域をお気に入り登録できる-
- ログインしているユーザーは、各小説・各地域をお気に入り登録できる。
### お気に入り一覧機能 -お気に入り一覧を表示する-
- ログインしているユーザーは、マイページにて登録済のお気に入りを一覧表示できる。
### お気に入り削除機能 -お気に入り一覧を解除する-
- ログインしているユーザーは、マイページにて登録済のお気に入りを解除できる。


<br>
<br>

  
# 実装済機能について
  
<br>
<br>
  
# 実装予定の機能
- 小説（作品）管理機能
- 検索機能
- ユーザー管理機能
- コメント管理機能
- フォロー管理機能
- お気に入り管理機能
  
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
<img width="655" alt="スクリーンショット 2022-06-12 19 32 09" src="https://user-images.githubusercontent.com/104757248/173229125-e4483f0b-c4f9-439d-bc90-f2185a48aeee.png">
<br>
<br>
  
# 開発環境
- Ruby
- Ruby on rails
- JavaScript
- HTML/CSS

<br>
<br>
  
  
  
