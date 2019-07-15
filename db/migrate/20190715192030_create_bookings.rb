class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :date
      t.string :location
      t.references :review, foreign_key: true

      t.timestamps
    end
  end
end
