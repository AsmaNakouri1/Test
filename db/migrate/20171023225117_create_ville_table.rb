class CreateVilleTable < ActiveRecord::Migration[5.1]
  def change
    create_table :ville_tables do |t|
      t.string :Nom
      t.string :maj
      t.numeric :code_postal
      t.numeric :code_inse
      t.numeric :code_region
      t.float :latitude
      t.float :longitude


    end
  end
end
