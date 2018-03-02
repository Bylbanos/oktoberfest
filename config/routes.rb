Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :beers do
    end
  end

    resources :beer_table do
      get :search, on: :collection
    end


  get 'contact', to: 'static/contents#contact_us'
  get 'gallery', to: 'static/contents#gallery'
  get 'beer_table', to: 'beer_table#beer_table'

  root 'beer_table#beer_table'
end
