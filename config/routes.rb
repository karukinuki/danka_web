Rails.application.routes.draw do
  get 'pasts/index'=>"pasts#index"
  get 'pasts/edit'
  post 'pasts/create'=>'pasts#create'
  get 'pasts/:id/new'=>'pasts#new'
  post 'pasts/:id/edit'=>"pasts#edit"
  post 'pasts/:id/destroy'=>'pasts#destroy'

  get 'dankas/index'=>"dankas#index"
  get 'dankas/new'
  get 'dankas/:id/edit'=>"dankas#edit"
  post 'dankas/create'
  get 'dankas/:id'=>'dankas#show'
  post 'dankas/:id/update'=>"dankas#update"
  post 'dankas/:id/destroy'=>'dankas#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
