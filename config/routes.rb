Rails.application.routes.draw do
  devise_for :users
  # get 'category/index'


  resources :categories, only: [:index, :show] do
  	resources :articles
  end


  root 'categories#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
