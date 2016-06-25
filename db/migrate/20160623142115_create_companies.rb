class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :website_url
      t.timestamps null: false
    end
    add_index :companies, :name, unique: true
  end
end
