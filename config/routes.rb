Rails.application.routes.draw do

  resources :constatuses
  resources :verifications
  resources :hires
  get 'errors/error_404'

  get 'errors/error_422'

  get 'errors/error_500'

  get '/company/dashboard', to:'home#companydash' , as: 'company_dash'

  get '/dashboard/:id', to:'companies#dashboard', as: 'dashboard'

  resources :searches, path: '/search/'
  mount Ckeditor::Engine => '/ckeditor'
  resources :companies, path: '/company'
  resources :ltypes, except: [:index, :show]
  resources :qtypes, except: [:index, :show]
  resources :qualifications, except: [:index, :show]
  resources :licences, except: [:index, :show]
  resources :workhistories, except: [:index, :show]
  resources :profile, only: [:index, :show], path: '/contractor'

  resources :people do 
    get '/verify', to: 'people#verification_up', as: 'verification', via: :post
  end



  resources :categories
  devise_for :users

  root 'home#index'


  resources :jobs do
    resources :bids, except: [:index]
  end

  get 'settings/user/:id', to: "people#edit", as: "settings_user"
  get 'settings/comapny/:id', to: "companies#edit", as: "settings_company"


end
