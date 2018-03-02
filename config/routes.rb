Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :beers do
    end
  end

  namespace :static do
    resources :contents, only: %i[] do
      get :search, on: :collection
    end
  end

  get 'contact', to: 'static/contents#contact_us'
  get 'gallery', to: 'static/contents#gallery'
  get 'beer_table', to: 'static/contents#beer_table'

  root 'static/contents#beer_table'

end
