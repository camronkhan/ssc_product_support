class CreateSourceLocations < ActiveRecord::Migration
  def change
    create_table :source_locations do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
    add_index :source_locations, :name, unique: true
  end
end
