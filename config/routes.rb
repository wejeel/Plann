Rails.application.routes.draw do
  

  resources :trip_todos
  resources :suggestions_box_trips
  resources :suggestions_box_hotels
  mount API::Base, at: "/"
  mount GrapeSwaggerRails::Engine, at: "/documentation"
  # mount GrapeSwaggerRails::Engine => '/swagger'

  resources :tasks
  get 'trip_suggestions' => "trip_suggestions#index"
  get 'hotel_suggestions' => "hotel_suggestions#index"
  get 'mytrips'  => "mytrips#index"
  get 'trips' => "trips#index"

  
 post '/createTrip' =>"trips#createTrip"

  root :to =>'home#index'
  # root to: 'receipts#index'


  # devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  
  devise_for :users
  get 'load_data/get_data_from_api' => 'load_data#get_data_from_api'
  get 'load_data/index' => 'load_data#index'
  
  #match '/receipts/:receipt_id/uploads/newupload' => 'uploads#newreceiptupload', via: :get, as: :new_receipt_upload

  resources :receipts do
    resources:uploads
  end
  
  resources :users do
    resources :receipts
  end
  
  resources :receipts do
    resources:products
  end
end
