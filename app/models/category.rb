class Category < ApplicationRecord

	validates :name, presence: true
	validates :type, presence: true
	validates :model, presence: true
	has_many :products

end