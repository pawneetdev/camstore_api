class RemoveColumnProductIdFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :product_id, :user
  end
end
