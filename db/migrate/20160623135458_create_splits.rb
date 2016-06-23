class CreateSplits < ActiveRecord::Migration
  def change
    create_table :splits do |t|
      t.string :queue
      t.string :description
      t.timestamps null: false
    end
    add_index :splits, :queue, unique: true
    add_index :splits, [:splitable_type, :splitable_id], name: 'splitable_index'
  end
end
