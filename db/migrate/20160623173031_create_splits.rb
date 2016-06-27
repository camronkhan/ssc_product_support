class CreateSplits < ActiveRecord::Migration
  def change
    create_table :splits do |t|
      t.string :name, null: false
      t.references :agent, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
    add_index :splits, :name, unique: true
  end
end
