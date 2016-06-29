class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.string :number, null: false
      t.text :option, array: true, default: []
      t.string :description
      t.references :phonable, polymorphic: true
      t.timestamps null: false
    end
    add_index :phone_numbers, [:phonable_type, :phonable_id], name: 'phonable_index'
  end
end
