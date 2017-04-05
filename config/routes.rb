Rails.application.routes.draw do
  root 'gists#index'

  resources :gists do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
