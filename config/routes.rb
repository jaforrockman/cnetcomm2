Rails.application.routes.draw do
  devise_for :views
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :connections
  resources :connection_types
  root to:'pages#home'

  get  '/about' => 'pages#about'
  get '/customer_list'=> 'pages#customer_list'
  get '/bill_list'=> 'pages#bill_list'
  get '/cost_list'=> 'pages#cost_list'
  get '/overview'=> 'pages#overview'
  get '/admin_panel'=> 'pages#admin_panel'

  get '/active_customers'=> 'pages#active_customers'
  get '/inactive_customers'=> 'pages#inactive_customers'

  devise_for :users
  resources :users_admin, :controller => 'users'
  resources :users
  resources :costs
  
  resources :bills do
    get :autocomplete_customer_name, :on => :collection
  end  

  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
