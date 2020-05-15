Rails.application.routes.draw do


  root "dankas#index"
  resources :pasts, except: [:new]
  get 'pasts/:id/new'=>'pasts#new'
  resources :dankas

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
