class CreateOperationTimes < ActiveRecord::Migration
  def change
    create_table :operation_times do |t|
      t.time :begin, null: false
      t.time :end, null: false
      t.references :agent, index: true, foreign_key: true, null: false
      t.references :operation_day, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
