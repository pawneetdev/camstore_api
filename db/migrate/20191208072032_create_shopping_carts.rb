class CreateShoppingCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :shopping_carts do |t|
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
    add_index :shopping_carts, :user_id
    add_index :shopping_carts, :product_id
  end
end
