class ServiceJobs < ActiveRecord::Migration
  def change
    create_table :service_jobs do |t|
      t.string :condition, null: false, default: 'All'
      t.references :product, index: true, foreign_key: true, null: false
      t.references :facility, index: true, foreign_key: true, null: false
      t.references :job_type, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
    add_index :service_jobs, [:product_id, :facility_id]
    add_index :service_jobs, [:product_id, :facility_id, :job_type_id, :condition], unique: true, name: 'service_jobs_index'
  end
end
