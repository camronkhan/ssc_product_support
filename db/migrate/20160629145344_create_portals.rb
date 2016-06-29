class CreatePortals < ActiveRecord::Migration
  def change
    create_table :portals do |t|
      t.string :name
      t.string :website_url

      t.timestamps null: false
    end
    add_index :portals, :name, unique: true
  end
end
