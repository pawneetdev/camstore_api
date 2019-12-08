class Category < ApplicationRecord

	validates :name, presence: true
	validates :category_type, presence: true
	validates :model, presence: true
	has_many :products

end