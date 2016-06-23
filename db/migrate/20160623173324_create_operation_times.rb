class CreateOperationTimes < ActiveRecord::Migration
  def change
    create_table :operation_times do |t|
      t.time :open, null: false
      t.time :close, null: false
      t.references :agent, index: true, foreign_key: true, null: false
      t.references :day, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
