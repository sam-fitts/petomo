class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :animal_id
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
