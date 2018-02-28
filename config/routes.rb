Rails.application.routes.draw do
  devise_for :users
  resources :beers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'contact', to: 'beers#contact_us'
  get 'gallery', to: 'beers#gallery'
  get 'beer_table', to: 'beers#beer_table'
  root 'beers#beer_table'
end
