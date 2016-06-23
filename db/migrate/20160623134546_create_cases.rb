class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :queue, null: false
      t.string :description
      t.timestamps null: false
    end
    add_index :cases, :queue, unique: true
    add_index :cases, [:caseable_type, :caseable_id], name: 'caseable_index'
  end
end
