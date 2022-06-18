class Area < ApplicationRecord
  has_many :novel_areas
  has_many :novels, through: :novel_areas

  validates :country, presence: true

  def self.search(search)
    if search != ""
      Area.where('country LIKE(?) OR prefecture LIKE(?) OR city LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Area.where('prefecture LIKE(?) ', "%#{"東京"}%")
    end
  end
end
