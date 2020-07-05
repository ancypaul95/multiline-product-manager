class BookingProduct < ApplicationRecord
  belongs_to :bookings
  belongs_to :products
end
