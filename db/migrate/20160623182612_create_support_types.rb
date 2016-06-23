class CreateSupportTypes < ActiveRecord::Migration
  def change
    create_table :support_types do |t|
      t.string :name, null: false
      t.string :description
      t.timestamps null: false
    end
    add_index :support_types, :name, unique: true
  end
end
