Rails.application.routes.draw do
  
  root :to =>'home#index'
  # root to: 'receipts#index'
  
  get 'home/index'
  # devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  
  devise_for :users
    
  get 'budgetplanner' => "budgetplanner#index"
  
  
  
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/edit'
  
  resources :users do
    resources :receipts
  end
  
  resources :receipts do
    resources:products
  end
end
