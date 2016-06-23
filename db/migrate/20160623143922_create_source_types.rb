class CreateSourceTypes < ActiveRecord::Migration
  def change
    create_table :source_types do |t|
      t.string :type
      t.timestamps null: false
    end
    add_index :source_types, :type, unique: true
  end
end
