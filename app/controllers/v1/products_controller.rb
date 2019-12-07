class V1::ProductsController < ApplicationController

	def index
		@products = Product.all
		render json: @products
	end

	def category
		if params[:category].present?
			category = Category.find_by_name(params[:category].downcase)
			
			if category.present?
				render json: category.products
			else
				render json: []
			end
		end
	end

end