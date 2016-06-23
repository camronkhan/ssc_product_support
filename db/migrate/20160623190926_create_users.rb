class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :core_id, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.references :user_role, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
    add_index :users, :core_id, unique: true
    add_index :users, :email, unique: true
  end
end
