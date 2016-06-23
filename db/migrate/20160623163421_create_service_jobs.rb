class CreateServiceJobs < ActiveRecord::Migration
  def change
    create_table :service_jobs do |t|
      t.string :condition
      t.references :product, index: true, foreign_key: true
      t.references :servicer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
