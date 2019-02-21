Rails.application.routes.draw do
  root "departments#index"
  
  resources :departments do
    resources :items
  end
  
  resources :items do
    resources :comments
    resources :ratings
  end

end
