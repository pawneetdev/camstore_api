class CategorySerializer < ActiveModel::Serializer
	attributes :id, :name, :category_type, :model
end
