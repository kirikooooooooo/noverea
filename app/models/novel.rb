class Novel < ApplicationRecord
  has_many :novel_areas
  has_many :areas, through: :novel_areas

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :title, presence: true
  validates :auther, presence: true
end
