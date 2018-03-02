class ChangeColumnInReservations < ActiveRecord::Migration[5.1]
  def change
    remove_column :reservations, :start_date
    remove_column :reservations, :end_date
    add_column :reservations, :start_date, :datetime
    add_column :reservations, :end_date, :datetime
  end
end
