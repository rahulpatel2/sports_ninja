Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sources, only: [:index], format: "json"
  resources :articles, only: [:index], format: "json"
end
