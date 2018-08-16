Rails.application.routes.draw do
  get 'sleeps/index'
  get 'sleeps/index2'
  get 'sleeps/index3'
  get 'sleeps/index4'
  get 'sleeps/setup'
  get 'sleeps/show'
  get 'sleeps/new'
  get 'sleeps/user'
  get 'sleeps/setgoal'
  get 'sessions/new'
  devise_for :users
  resources :sleeps
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/"=>"home#index"

devise_scope :user do
       get '/users/sign_out' => 'devise/sessions#destroy'
     end
   authenticated :users do
        root :to => "sleeps#index"
    end

    unauthenticated :users do
        root :to => "home#index"
    end


end
