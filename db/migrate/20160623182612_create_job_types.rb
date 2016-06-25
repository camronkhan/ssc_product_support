class CreateJobTypes < ActiveRecord::Migration
  def change
    create_table :job_types do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
    add_index :job_types, :name, unique: true
  end
end
