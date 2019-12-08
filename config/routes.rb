Rails.application.routes.draw do

  	devise_for :users

	namespace :v1 do
		resources :categories, only: [:index]
		resources :products, only: [:index]
		get 'products/:category' => 'products#category'
		resources :sessions, only: [:create, :destroy]
	end

end