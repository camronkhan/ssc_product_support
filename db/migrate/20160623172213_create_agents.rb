class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name, null: false
      t.boolean :operates24x7, null: false, default: false
      t.references :support_function, index: true, foreign_key: true
      t.references :support_center, index: true, foreign_key: true
      t.timestamps null: false
    end
    add_index :agents, :name, unique: true
  end
end
