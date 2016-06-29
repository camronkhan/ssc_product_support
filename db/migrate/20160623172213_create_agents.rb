class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name, null: false
      t.boolean :available24x7, null: false, default: false
      t.references :support_center, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
    add_index :agents, :name, unique: true
  end
end
