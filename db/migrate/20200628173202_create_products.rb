class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :quantity
      t.string :name
      t.integer :type
      t.string :image_url
      t.references :product_categories, foreign_key: true
      t.timestamps
    end
  end
end
