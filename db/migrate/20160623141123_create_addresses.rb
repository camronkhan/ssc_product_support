class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :company, null: false
      t.string :line_1, null: false
      t.string :line_2
      t.string :city, null: false
      t.string :state_province, null: false
      t.string :postal_code, null: false
      t.string :country, null: false
      t.timestamps null: false
    end
    add_index :addresses, [:addressable_type, :addressable_id], name: 'addressable_index'
  end
end
