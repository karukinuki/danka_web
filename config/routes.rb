Rails.application.routes.draw do

  root "home#index"

  devise_for :users

  get 'home/index'=> "home#index"
  get 'home/policy'=> "home#policy"
  get 'home/service'=> "home#service"
  get 'home/test'=> "home#test"
  get 'home/userpage/:id'=>"home#userpage"

  resources :pasts do
    member do
      get :kaiki
    end
  end

  resources :dankas do
    collection do
      get :home
      post :confirm
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
