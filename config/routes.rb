Rails.application.routes.draw do

	namespace :v1 do
		resources :categories, only: [:index]
		resources :products, only: [:index]
		get 'products/:category' => 'products#category'
	end

end