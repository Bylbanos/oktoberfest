Rails.application.routes.draw do
  devise_for :users
  resources :beers, only: %i[index, beer_table] do
    get :search, on: :collection
  end

  get 'contact', to: 'beers#contact_us'
  get 'gallery', to: 'beers#gallery'
  get 'beer_table', to: 'beers#beer_table'
  root 'beers#beer_table'
end
