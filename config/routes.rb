Rails.application.routes.draw do
  resources :beers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'contact', to: 'beers#contact_us'
  get 'gallery', to: 'beers#gallery'
  root 'beers#index'
end
