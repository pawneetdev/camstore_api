class User < ApplicationRecord
	acts_as_token_authenticatable

	has_one :shopping_cart

	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :validatable

	after_create :create_cart

	def create_cart
		cart = ShoppingCart.new
		cart.user_id = self.id
		cart.save
		return cart
	end
end
