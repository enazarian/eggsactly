class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.integer :product_id
      t.string :category

      t.timestamps

    end
  end
end
