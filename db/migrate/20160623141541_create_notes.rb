class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :info
      t.timestamps null: false
    end
    add_index :notes, [:annotatable_type, :annotatable_id], name: 'annotatable_index'
  end
end
