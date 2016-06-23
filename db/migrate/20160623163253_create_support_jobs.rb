class CreateSupportJobs < ActiveRecord::Migration
  def change
    create_table :support_jobs do |t|
      t.string :condition, null: false
      t.references :product, index: true, foreign_key: true, null: false
      t.references :support_type, index: true, foreign_key: true, null: false
      t.references :agent, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
    add_index :support_jobs, [:product_id, :support_type, :agent_id]
  end
end
