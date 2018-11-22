Rails.application.routes.draw do
  # get 'cocktails/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "cocktails#index"

  resources :doses, only: [:destroy]

  resources :cocktails do
    resources :reviews, only: [:new, :create]
    resources :doses, only: [:new, :create]
  end
end
