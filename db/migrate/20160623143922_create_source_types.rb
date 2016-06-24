class CreateSourceTypes < ActiveRecord::Migration
  def change
    create_table :source_types do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
    add_index :source_types, :name, unique: true
  end
end
