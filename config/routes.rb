Rails.application.routes.draw do
  root 'pages#home'
 
  resources :portfolios, except: :new do
    resources :tags, only: [:create, :destroy], param: :tag_id, controller: :portfolio_tags
    resources :blocks, only: [:index, :create, :destroy]
    resources :profiles, only: [:index, :update]
    resources :experiences, only: [:index, :create, :destroy]
    resources :educations, only: [:index, :create, :destroy]
    resources :skills, only: [:index, :create, :destroy]
    resources :hobbies, only: [:index, :create, :destroy]
    resources :languages, only: [:index, :create, :destroy]
    resources :abouts, only: [:index, :update]
  end
 
  resources :tags, only: :index
end