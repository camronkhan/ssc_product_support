class CreateCaseQueues < ActiveRecord::Migration
  def change
    create_table :case_queues do |t|
      t.string :name, null: false
      t.string :description
      t.references :ticketable, polymorphic: true
      t.timestamps null: false
    end
    add_index :case_queues, :name, unique: true
    add_index :case_queues, [:ticketable_type, :ticketable_id], name: 'ticketable_index'
  end
end
