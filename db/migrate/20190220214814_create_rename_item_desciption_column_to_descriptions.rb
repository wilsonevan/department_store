class CreateRenameItemDesciptionColumnToDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :rename_item_desciption_column_to_descriptions do |t|
      rename_column :items, :desciption, :description
      t.timestamps
    end
  end
end
