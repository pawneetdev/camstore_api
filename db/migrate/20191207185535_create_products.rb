class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :category_id
      t.text :description
      t.float :price
      t.integer :make

      t.timestamps
    end
    add_index :products, :category_id
  end
end
