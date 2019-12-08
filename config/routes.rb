Rails.application.routes.draw do

  	devise_for :users

	namespace :v1 do
		resources :categories, only: [:index]
		resources :products, only: [:index]
		resource :sessions, only: [:create, :destroy]
		
		get 'products/:category' => 'products#category'
		get 'cart/add/:product_id' => 'cart#add'
		get 'cart' => 'cart#index'

	end

end