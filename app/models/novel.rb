class Novel < ApplicationRecord
  has_many :areas, through: :novel_areas
  has_many :novel_areas

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :title, presence: true, :uniqueness => {:scope => :auther ,message: "その著者による当該作品はすでに投稿されています。"}
  validates :auther, presence: true
end
