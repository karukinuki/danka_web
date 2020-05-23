Rails.application.routes.draw do


  root "dankas#index"
  resources :pasts do
    member do
      get :kaiki
    end
  end
  resources :dankas

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
