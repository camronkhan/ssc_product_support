class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :description
      t.string :image_url
      t.references :company, index: true, foreign_key: true, null: false
      t.references :source_type, index: true, foreign_key: true, null: false
      t.references :source_location, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
    add_index :products, :name, unique: true
  end
end
