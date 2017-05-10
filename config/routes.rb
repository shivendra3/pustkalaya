Rails.application.routes.draw do
  
  resources :issues
  resources :students ,param: :sid
  resources :totalbooks
  root 'home#index'
  get 'welcome/index' ,to: 'welcome#index' 
  resources :books ,param: :isbn do
  	collection do
  		get 'search'
  	end
  end
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
