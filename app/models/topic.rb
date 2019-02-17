class Topic < ApplicationRecord
  belongs_to :theme
  has_one_attached :image
end
