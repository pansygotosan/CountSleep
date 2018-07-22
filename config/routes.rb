Rails.application.routes.draw do
  get 'sleeps/index'
  get 'sleeps/index2'
  get 'sleeps/index3'
  get 'sleep/setup'
  get 'sleeps/show'
  get 'sleeps/new'
  get 'sleeps/edit'
  devise_for :users
  resources :sleeps
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/"=>"sleeps#index"
end
