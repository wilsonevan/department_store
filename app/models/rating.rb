class Rating < ApplicationRecord
  belongs_to :item

  def average_rating
    binding.pry
    @average = sum(Rating.all)
  end
end
