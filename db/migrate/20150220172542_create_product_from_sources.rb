class CreateProductFromSources < ActiveRecord::Migration
  def change
    create_table :product_from_sources do |t|
      t.integer :product_id
      t.integer :source_id

      t.timestamps

    end
  end
end
