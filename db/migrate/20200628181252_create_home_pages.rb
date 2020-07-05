class CreateHomePages < ActiveRecord::Migration[6.0]
  def change
    create_table :home_pages do |t|
      t.string :title
      t.string :description
      t.string :product_title
      t.string :product_desc
      t.string :main_prod_title
      t.string :main_prod_desc
      t.string :banner_alert

      t.timestamps
    end
  end
end
