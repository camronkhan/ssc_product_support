class CreatePortalJobs < ActiveRecord::Migration
  def change
    create_table :portal_jobs do |t|
      t.string :condition, null: false, default: 'All'
      t.references :product, index: true, foreign_key: true, null: false
      t.references :portal, index: true, foreign_key: true, null: false
      t.references :job_type, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
    add_index :portal_jobs, [:product_id, :portal_id]
    add_index :portal_jobs, [:product_id, :portal_id, :job_type_id, :condition], unique: true, name: 'portal_jobs_index'
  end
end
