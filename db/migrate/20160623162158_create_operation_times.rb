class CreateOperationTimes < ActiveRecord::Migration
  def change
    create_table :operation_times do |t|
      t.time :open
      t.time :close
      t.references :agent, index: true, foreign_key: true
      t.references :day, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
