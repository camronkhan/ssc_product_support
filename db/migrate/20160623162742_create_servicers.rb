class CreateServicers < ActiveRecord::Migration
  def change
    create_table :servicers do |t|
      t.string :name
      t.timestamps null: false
    end
    add_index :servicers, :name, unique: true
  end
end
