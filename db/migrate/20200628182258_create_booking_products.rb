class CreateBookingProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_products do |t|
      t.references :bookings, foreign_key: true
      t.references :products, foreign_key: true
      t.timestamps
    end
  end
end
