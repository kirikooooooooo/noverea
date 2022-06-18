class Novel < ApplicationRecord
  has_many :novel_areas
  has_many :areas, through: :novel_areas

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :title, presence: true
  validates :auther, presence: true

  def self.search(search)
    if search != ""
      Novel.where('title LIKE(?) OR auther LIKE(?) OR another_area LIKE(?) OR spot LIKE(?) ', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Novel.all
    end
  end
end
