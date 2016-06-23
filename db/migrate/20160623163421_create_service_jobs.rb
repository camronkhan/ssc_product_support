class CreateServiceJobs < ActiveRecord::Migration
  def change
    create_table :service_jobs do |t|
      t.string :condition, null: false, default: 'All'
      t.references :product, index: true, foreign_key: true, null: false
      t.references :servicer, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
    add_index :service_jobs, [:product_id, :servicer_id]
  end
end
