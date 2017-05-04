Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  scope "/main" do 
  	resources :kings
  	resources :members
  	resources :admins
  	resources :users
  end

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
