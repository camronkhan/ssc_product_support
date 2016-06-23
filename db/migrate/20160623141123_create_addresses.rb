class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :company
      t.string :line_1
      t.string :line_2
      t.string :city
      t.string :state_province
      t.string :postal_code
      t.string :country
      t.timestamps null: false
    end
    add_index :addresses, [:addressable_type, :addressable_id], name: 'addressable_index'
  end
end
