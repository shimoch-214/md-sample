Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:show, :new, :create]
  root 'articles#new'

  namespace :api, format: 'json' do
    get 'articles/preview'
  end

end
