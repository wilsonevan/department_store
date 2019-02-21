class Item < ApplicationRecord
  belongs_to :department
  has_many :comments
  has_many :ratings
end
