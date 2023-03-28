class CreateFruits < ActiveRecord::Migration[7.0]
  def change
    create_table :fruits do |t|
      t.string :name
      t.string :image
      t.integer :price
      t.string :availability
      t.integer :farmer_id
      t.integer :client_id

      t.timestamps
    end
  end
end
