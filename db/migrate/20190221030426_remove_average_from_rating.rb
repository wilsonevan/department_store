class RemoveAverageFromRating < ActiveRecord::Migration[5.2]
  def change
    remove_column :ratings, :average, :integer
  end
end
