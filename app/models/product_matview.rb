class ProductMatview < ActiveRecord::Base
	
	# Bind model to underlying materialized view
	self.table_name = 'product_matview'

	# Materialized view is a read-only table
	def readonly?
		true
	end

	# Refresh materialized view
	def self.refresh
		ActiveRecord::Base.connection.execute('REFRESH MATERIALIZED VIEW product_matview')
	end
end