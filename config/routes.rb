Rails.application.routes.draw do
  root to:'pages#home'

  get  '/about' => 'pages#about'
  get '/customer_list'=> 'pages#customer_list'
  get '/bill_list'=> 'pages#bill_list'
  get '/cost_list'=> 'pages#cost_list'
  get '/admin_panel'=> 'pages#admin_panel'

  devise_for :users
  resources :costs
  resources :bills do
    get :autocomplete_customer_name, :on => :collection
  end
  

  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
