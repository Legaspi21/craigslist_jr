Rails.application.routes.draw do
  # get 'category/index'


  resources :categories, only: [:index] do
  	resources :articles
  end


  root 'category#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
