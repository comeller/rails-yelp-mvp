Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :restaurants , only: [ :index, :show, :new, :create ] do
      resources :reviews, only: [ :index, :new, :create ]
    end
    resources :reviews, only: [ :show, :edit, :update, :destroy ]
end

Rails.application.routes.draw do
    namespace :admin do
      resources :restaurants, only: [:index]
    end
end
