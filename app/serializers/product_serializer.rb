class ProductSerializer < ActiveModel::Serializer
	attributes :id, :category, :description ,:price ,:make

	def category
		{
			name: self.object.category.name,
			category_type: self.object.category.category_type,
			model: self.object.category.model
		}
	end
end
