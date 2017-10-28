class CreateShopsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :chain
      t.string :name
      t.float :latitude
      t.float :longitude
      t.text :address
      t.string :city
      t.string :zip
      t.numeric :phone
      t.string :country_code
    end
  end
end
