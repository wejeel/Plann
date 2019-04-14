Rails.application.routes.draw do
  
 
  root :to =>'home#index'
  # root to: 'receipts#index'


  # devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  
  devise_for :users
  

 
  

  
  #match '/receipts/:receipt_id/uploads/newupload' => 'uploads#newreceiptupload', via: :get, as: :new_receipt_upload

  resources :receipts do
    resources:uploads
  end

  get 'uploads/create_upload' => 'uploads#create_upload'
  get 'budgetplanner' => "budgetplanner#index"
  get 'managebudget' => "managebudget#index"
  
 post '/generateBudget' =>"budgetplanner#generateBudget"
  get 'loaddata'      => "load_data#get_data_from_api"
  get 'loaddata/index'=> "load_data#index"
  get 'loaddata/uploadfile'=> "load_data#uploadfile"
  
  get 'uploads/index_upload'=> "uploads#index_upload"
  get 'uploads/create_upload'=> "uploads#create_upload"
  
  resources :users do
    resources :receipts
  end
  
  resources :receipts do
    resources:products
  end
end
