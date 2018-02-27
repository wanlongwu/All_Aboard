Rails.application.routes.draw do
  get 'boats/index'

  get 'boats/show'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :boats

end
