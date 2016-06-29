class CreateOperationDays < ActiveRecord::Migration
  def change
    create_table :operation_days do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
    add_index :operation_days, :name, unique: true
  end
end
