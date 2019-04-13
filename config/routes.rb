Rails.application.routes.draw do
  
  resources :uploads
  root :to =>'home#index'
  # root to: 'receipts#index'
  
  get 'home/index'
  # devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  
  devise_for :users
    
  get 'budgetplanner' => "budgetplanner#index"
  get 'managebudget' => "managebudget#index"
  
 post '/generateBudget' =>"budgetplanner#generateBudget"
  get 'loaddata'      => "load_data#get_data_from_api"
  get 'loaddata/index'=> "load_data#index"
  get 'loaddata/uploadfile'=> "load_data#uploadfile"
  
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
