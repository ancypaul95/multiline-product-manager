class Product < ApplicationRecord
  enum type: { active: 0, archived: 1 }
  belongs_to :product_categories
end
