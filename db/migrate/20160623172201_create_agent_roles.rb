class CreateAgentRoles < ActiveRecord::Migration
  def change
    create_table :agent_roles do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
    add_index :agent_roles, :name, unique: true
  end
end