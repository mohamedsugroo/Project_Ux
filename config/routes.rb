Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  resources :companies
  resources :ltypes
  resources :qtypes
  resources :qualifications
  resources :licences
  resources :workhistories
  resources :people
  resources :profile, only: [:index, :show]
  resources :categories
  devise_for :users

  root 'home#index'


  resources :jobs do 
    resources :bids, except: [:show, :index]
  end

  get 'settings/user/:id', to: "people#edit", as: "settings_user"
  get 'settings/comapny/:id', to: "companies#edit", as: "settings_company"


end
