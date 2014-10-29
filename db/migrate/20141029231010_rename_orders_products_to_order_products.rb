class RenameOrdersProductsToOrderProducts < ActiveRecord::Migration
  def change
    rename_table :orders_products, :order_products
  end
end
