Rails.application.routes.draw do
  
  
  get 'reviews/new'

  get 'reviews/create'

  root :to => 'movies#index'
  
  get  'auth/:provider/callback' => 'sessions#create',:as => 'login'
  get 'logout' => 'sessions#destroy'
  get  'auth/failure' => 'sessions#failure'
  resources :movies do
    resources :reviews
  end 
    
  
end
