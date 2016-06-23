class CreateSupportJobs < ActiveRecord::Migration
  def change
    create_table :support_jobs do |t|
      t.string :condition
      t.product :references
      t.support_type :references
      t.agent :references

      t.timestamps null: false
    end
  end
end
