class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :address
      t.string :description

      t.timestamps null: false
    end
    add_index :emails, :address, unique: true
  end
end
