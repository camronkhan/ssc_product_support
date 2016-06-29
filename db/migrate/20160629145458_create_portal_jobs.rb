class CreatePortalJobs < ActiveRecord::Migration
  def change
    create_table :portal_jobs do |t|
      t.string :condition

      t.timestamps null: false
    end
  end
end
