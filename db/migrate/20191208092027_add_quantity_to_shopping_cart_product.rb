class AddQuantityToShoppingCartProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :shopping_cart_products, :quantity, :integer
  end
end
