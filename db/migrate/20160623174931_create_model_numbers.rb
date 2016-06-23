class CreateModelNumbers < ActiveRecord::Migration
  def change
    create_table :model_numbers do |t|
      t.string :model
      t.string :description
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :model_numbers, :model, unique: true
  end
end
