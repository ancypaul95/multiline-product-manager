class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :user_email
      t.string :user_phone
      t.string :user_note

      t.timestamps
    end
  end
end
