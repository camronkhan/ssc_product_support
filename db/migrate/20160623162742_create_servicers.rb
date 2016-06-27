class CreateServicers < ActiveRecord::Migration
  def change
    create_table :servicers do |t|
      t.string :name, null: false
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state_province
      t.string :postal_code
      t.string :country
      t.timestamps null: false
    end
    add_index :servicers, :name, unique: true
  end
end
