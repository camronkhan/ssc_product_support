class AddSupportTypeToSupportJobs < ActiveRecord::Migration
  def change
    add_reference :support_jobs, :support_type, index: true, foreign_key: true
  end
end
