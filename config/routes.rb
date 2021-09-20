Rails.application.routes.draw do
  
  
  devise_for :users
  root 'home#index'
  
  get 'about_us' => "home#about_us"
  get 'contact_us' => "home#contact_us"

  resources :projects
  resources :developers
end
