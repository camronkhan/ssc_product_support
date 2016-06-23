class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.references :split, index: true, foreign_key: true
      t.references :support_function, index: true, foreign_key: true
      t.references :support_center, index: true, foreign_key: true
      t.timestamps null: false
    end
    add_index :agents, :name, unique: true
  end
end
