class Photo < ApplicationRecord
  belongs_to :profile
  has_many :likes
end
