class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '推理小説(ミステリー)' },
    { id: 3, name: '青春小説' },
    { id: 4, name: '恋愛小説' },
    { id: 5, name: 'SF小説（サイエンス・フィクション）' },
    { id: 6, name: 'ファンタジー小説(幻想小説)' },
    { id: 7, name: 'ホラー小説(怪奇小説・怪談小説)' },
    { id: 8, name: 'ライトノベル' },
    { id: 9, name: '経済小説' },
    { id: 10, name: '政治小説' },
    { id: 11, name: '歴史小説・時代小説' },
    { id: 12, name: '児童小説' },
    { id: 13, name: '官能小説' }
  ]

  include ActiveHash::Associations
  has_many :novels

  end