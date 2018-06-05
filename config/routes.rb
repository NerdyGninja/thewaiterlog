Rails.application.routes.draw do

  resources :users do
  	resources :tips
  end

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  
	root 'landing_pages#index'
  get 'landing_pages/index'
  get 'landing_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
