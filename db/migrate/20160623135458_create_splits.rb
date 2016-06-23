class CreateSplits < ActiveRecord::Migration
  def change
    create_table :splits do |t|
      t.string :queue, null: false
      t.string :description
      t.timestamps null: false
    end
    add_index :splits, :queue, unique: true
  end
end
