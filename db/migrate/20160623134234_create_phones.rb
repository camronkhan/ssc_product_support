class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :number, null: false
      t.text :option, array: true, default: []
      t.string :description
      t.references :phonable, polymorphic: true
      t.timestamps null: false
    end
    add_index :phones, [:phonable_type, :phonable_id], name: 'phonable_index'
  end
end
