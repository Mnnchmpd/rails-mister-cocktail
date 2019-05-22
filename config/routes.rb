Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: 'cocktails#index'
  resources :cocktails do
    resources :ingredients, only: [:show, :index, :edit]
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]
end
