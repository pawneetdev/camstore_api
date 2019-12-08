class ShoppingCartProductSerializer < ActiveModel::Serializer
	attributes :product, :quantity, 

	def product
		{
			id: self.object.product.id,
			name: self.object.product.name,
			price: self.object.product.price
		}
	end
end