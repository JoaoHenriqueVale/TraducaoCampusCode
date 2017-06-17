Rails.application.routes.draw do
  root to: 'translation#index'
  resources :translation
end
