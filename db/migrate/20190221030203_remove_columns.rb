class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    def self.up
      remove_column :rating, :average
    end
  end
end
