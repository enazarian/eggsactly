class CreateProductAtStores < ActiveRecord::Migration
  def change
    create_table :product_at_stores do |t|
      t.integer :product_id
      t.integer :store_id

      t.timestamps

    end
  end
end
