Rails.application.routes.draw do
  
  get 'budgetplanner/index'
  root :to =>'home#index'
  # root to: 'receipts#index'
  
  get 'home/index'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/edit'
  
  resources :receipts do
    resources:products
  end
end
