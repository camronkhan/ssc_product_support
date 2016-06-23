class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :title
      t.string :description
      t.timestamps null: false
    end
    add_index :links, [:linkable_type, :linkable_id], name: 'linkable_index'
  end
end
