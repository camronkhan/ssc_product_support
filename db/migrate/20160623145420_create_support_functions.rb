class CreateSupportFunctions < ActiveRecord::Migration
  def change
    create_table :support_functions do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
    add_index :support_functions, :name, unique: true
  end
end
