class CreateAddAvatarToDepartments < ActiveRecord::Migration[5.2]
  def change
    add_column :departments, :avatar, :string
  end
end
