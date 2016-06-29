class CreateContactCenters < ActiveRecord::Migration
  def change
    create_table :contact_centers do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
    add_index :contact_centers, :name, unique: true
  end
end
