class AddIsShelterBooleanToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_shelter, :boolean
  end
end
