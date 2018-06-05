Rails.application.routes.draw do
	root 'landing_pages#index'
  get 'landing_pages/index'
  get 'landing_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
