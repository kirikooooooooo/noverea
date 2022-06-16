class NovelArea < ApplicationRecord
  belongs_to :novel
  belongs_to :area

  attr_accessor(
    :title, :auther,
    :id, :created_at, :updated_at,
    :country, :prefecture, :city
   )
end
