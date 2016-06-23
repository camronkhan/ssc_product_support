class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :number, null: false
      t.string :option
      t.string :description
      t.timestamps null: false
    end
    add_index :phones, [:phonable_type, :phonable_id], name: 'phonable_index'
  end
end
