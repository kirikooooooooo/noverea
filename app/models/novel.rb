class Novel < ApplicationRecord
  has_many :areas, through: :novel_areas
  has_many :novel_areas
end
