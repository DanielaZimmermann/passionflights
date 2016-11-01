Rails.application.routes.draw do
  resources :searches
  resources :destinations, only:[:index, :show, :create, :destroy]
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  root 'static_pages#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
