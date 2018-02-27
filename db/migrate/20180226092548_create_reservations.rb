class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
