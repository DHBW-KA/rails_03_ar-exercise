Rails.application.routes.draw do
  resources :book_entries
  resources :accounts, except: :show
  resources :users
  resources :banks

  root 'banks#index'
end
