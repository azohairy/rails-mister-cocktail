Rails.application.routes.draw do
  # get 'doses/create'
  # get 'doses/new'
  # get 'doses/destroy'
  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/create'
  # get 'cocktails/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:create, :new, :destroy]
  end
end
