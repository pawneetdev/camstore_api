class V1::CartController < ApplicationController

	def add
		if current_user.present?
			product = Product.find(params[:product_id])
			
			cart = (current_user.shopping_cart.present? ? current_user.shopping_cart : current_user.create_cart)

			current_item = ShoppingCartProduct.find_by(product_id: params[:product_id], shopping_cart_id: cart.id)

			if current_item.present?
				current_item.quantity += 1
			else
				current_item = cart.shopping_cart_products.build
				current_item.product_id = product.id
				current_item.quantity = 1
			end

			current_item.save

			render json: current_item, status: :created
		else
			head(:unauthorized)
		end

	end

	def index
		if current_user.present?
			cart = (current_user.shopping_cart.present? ? current_user.shopping_cart : current_user.create_cart)

			render json: cart.shopping_cart_products
		else
			head(:unauthorized)
		end
	end

end