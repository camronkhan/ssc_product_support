class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :name
      t.timestamps null: false
    end
    add_index :days, :name, unique: true
  end
end
