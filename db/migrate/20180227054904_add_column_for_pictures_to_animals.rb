class AddColumnForPicturesToAnimals < ActiveRecord::Migration[5.1]
  def change
    add_column :animals, :pictures, :string
  end
end
