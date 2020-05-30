Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :stories, only: [:index, :show, :update, :create] do
  #   resources :comments, only: [:create]
  # end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :stories, only: [ :index, :show, :update, :create ]
    end
  end
end
