class AddAnimalReferenceToReservations < ActiveRecord::Migration[5.1]
  def change
    add_reference :reservations, :animal, foreign_key: true
  end
end
