Rails.application.routes.draw do
  root to: "reads#index"
  get '/api/v1/hot_reads', to: "api/v1/reads#hot_reads"

  resources :reads, only: [:index]
  namespace :api do
    namespace :v1 do
      resources :reads, only: [:create]
    end
  end
end
