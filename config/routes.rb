Rails.application.routes.draw do
  devise_for :users
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/edit'
  root to: 'receipts#index'
  resources :receipts do
    resources:products
  end
end
