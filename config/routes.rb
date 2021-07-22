Rails.application.routes.draw do
  resources :newsletters do
    match '/scrape', to: 'newsletters#scrape', via: :post, on: :collection
  end

  root to: 'newsletters#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
