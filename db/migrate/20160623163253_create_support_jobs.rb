class CreateSupportJobs < ActiveRecord::Migration
  def change
    create_table :support_jobs do |t|
      t.string :condition
      t.references :product, index: true, foreign_key: true
      t.references :support_type, index: true, foreign_key: true
      t.references :agent, index: true, foreign_key: true
      t.timestamps null: false
    end
    add_index :support_jobs, [:product_id, :support_type, :agent_id]
  end
end
