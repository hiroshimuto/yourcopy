class Theme < ApplicationRecord
  has_many :topics, dependent: :destroy
end
