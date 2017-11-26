Rails.application.routes.draw do
  resources :turmas
  resources :registros
  devise_for :users
  resources :espetaculos
  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
