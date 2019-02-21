class CreateRemoveAverageFromRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :remove_average_from_ratings do |t|
      column_remove :average
      t.timestamps
    end
  end
end
