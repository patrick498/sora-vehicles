class CreateVehicles < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicles do |t|
      t.string :type
      t.string :brand
      t.string :model
      t.string :description
      t.string :location
      t.float :price_day
      t.references :user

      t.timestamps
    end
  end
end
