class CreateServicers < ActiveRecord::Migration
  def change
    create_table :servicers do |t|
      t.string :name, null: false
      t.string :address_1, null: false
      t.string :address_2
      t.string :city, null: false
      t.string :state_province, null: false
      t.string :postal_code, null: false
      t.string :country, null: false
      t.timestamps null: false
    end
    add_index :servicers, :name, unique: true
  end
end
