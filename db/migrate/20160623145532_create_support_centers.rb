class CreateSupportCenters < ActiveRecord::Migration
  def change
    create_table :support_centers do |t|
      t.string :name
      t.timestamps null: false
    end
    add_index :support_centers, :name, unique: true
  end
end
