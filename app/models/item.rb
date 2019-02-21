class Item < ApplicationRecord
  belongs_to :department
  has_many :comments
  has_many :ratings

  def average_rating
    
    average = 0
    count = 0
    self.ratings.each do |rating|
      # binding.pry
      average += rating[:value]
      count += 1
    end
    # binding.pry
    return average = (average / count)
    # /length(item.ratings)
  end
end
