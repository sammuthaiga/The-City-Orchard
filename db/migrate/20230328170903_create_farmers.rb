class CreateFarmers < ActiveRecord::Migration[7.0]
  def change
    create_table :farmers do |t|
      t.string :name
      t.string :image
      t.string :email
      t.string :phonenumber
      t.string :location

      t.timestamps
    end
  end
end
