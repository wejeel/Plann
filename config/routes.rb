Rails.application.routes.draw do
  
  resources :uploads
  root :to =>'home#index'
  # root to: 'receipts#index'
  
  get 'home/index'
  # devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  
  devise_for :users
    
  get 'budgetplanner' => "budgetplanner#index"
<<<<<<< HEAD
  get 'managebudget' => "managebudget#index"
  
 post '/generateBudget' =>"budgetplanner#generateBudget"
=======
  get 'loaddata'      => "load_data#get_data_from_api"
  get 'loaddata/index'=> "load_data#index"
  get 'loaddata/uploadfile'=> "load_data#uploadfile"

>>>>>>> 8bb5313dcc190f1c17272fd898769a0bcd046026
  
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
