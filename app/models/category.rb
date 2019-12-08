class Category < ApplicationRecord

	validates :name, presence: true
	validates :category_type, presence: true
	validates :model, presence: true
	validates_format_of :model, :with => /\d{4}/, :message => "^Must be of the format: yyyy"
	has_many :products

end