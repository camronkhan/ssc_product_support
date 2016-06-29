class CreateAgentJobs < ActiveRecord::Migration
  def change
    create_table :agent_jobs do |t|
      t.string :condition, null: false, default: 'All'
      t.references :product, index: true, foreign_key: true, null: false
      t.references :agent, index: true, foreign_key: true, null: false
      t.references :job_type, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
    add_index :agent_jobs, [:product_id, :agent_id]
    add_index :agent_jobs, [:product_id, :agent_id, :job_type_id, :condition], unique: true, name: 'agent_jobs_index'
  end
end
