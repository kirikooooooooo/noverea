class Area < ApplicationRecord
  has_many :novel_areas
  has_many :novels, through: :novel_areas

  validates :country, presence: true
end
