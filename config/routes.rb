Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cocktails do
    resources :ingredients, only: [:show, :index, :edit]
    resources :doses, only: [:create, :index, :destroy, :new]
  end
end
