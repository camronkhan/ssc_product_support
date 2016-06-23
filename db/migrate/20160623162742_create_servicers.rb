class CreateServicers < ActiveRecord::Migration
  def change
    create_table :servicers do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
    add_index :servicers, :name, unique: true
  end
end
