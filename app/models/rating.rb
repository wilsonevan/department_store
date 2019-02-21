class Rating < ApplicationRecord
  belongs_to :item

  # def average_rating(item)
    
  #   average = 0
  #   count = 0
  #   item.ratings.each do |rating|
  #     # binding.pry
  #     average += rating[:value]
  #     count += 1
  #   end
  #   # binding.pry
  #   return average = (average / count)
  #   # /length(item.ratings)
  # end
end
