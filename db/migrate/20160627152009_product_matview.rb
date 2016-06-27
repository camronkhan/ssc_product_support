class ProductMatview < ActiveRecord::Migration
  def change
    execute <<-SQL
    	CREATE MATERIALIZED VIEW product_matview AS
    		SELECT p.name AS product, p.image_url AS image, c.name AS company
			FROM products p
			LEFT JOIN companies c ON p.company_id = c.id;
		CREATE INDEX ON product_matview (product);
    SQL
  end
end
