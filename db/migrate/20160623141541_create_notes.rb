class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :info, null: false
      t.references :annotatable, polymorphic: true
      t.timestamps null: false
    end
    add_index :notes, [:annotatable_type, :annotatable_id], name: 'annotatable_index'
  end
end
