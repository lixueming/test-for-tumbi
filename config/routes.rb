TestForTumbi::Application.routes.draw do
 
  resources :contracts


  devise_for :users

  root :to => 'contracts#index'
  get "home/about_us"
end
