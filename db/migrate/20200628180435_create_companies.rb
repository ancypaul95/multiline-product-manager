class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :about_us
      t.string :phone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
