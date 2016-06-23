class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :address, null: false
      t.string :description

      t.timestamps null: false
    end
    add_index :emails, :address, unique: true
    add_index :emails, [:emailable_type, :emailable_id], name: 'emailable_index'
  end
end
