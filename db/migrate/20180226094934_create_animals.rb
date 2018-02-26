class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.text :description
      t.string :animal_type
      t.integer :shelter_id

      t.timestamps
    end
  end
end
