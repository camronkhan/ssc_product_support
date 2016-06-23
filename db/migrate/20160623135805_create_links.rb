class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.string :description
      t.timestamps null: false
    end
    add_index :links, [:linkable_type, :linkable_id], name: 'linkable_index'
  end
end
