Rails.application.routes.draw do

  root "dankas#home"

  devise_for :users
  

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
