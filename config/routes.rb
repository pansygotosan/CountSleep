Rails.application.routes.draw do
  get 'sleeps/index'
  get 'sleeps/index2'
  get 'sleeps/index3'
  get 'sleeps/index4'
  get 'sleeps/setup'
  get 'sleeps/show'
  get 'sleeps/new'
  get 'sleeps/edit'
  get 'sleeps/setgoal'
  get 'sleeps/reset'
  devise_for :users
  resources :sleeps
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/"=>"sleeps#index"
end
