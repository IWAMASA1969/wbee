Rails.application.routes.draw do
  root 'top#index'

  get 'tasks/index'

  get 'login' => 'sessions#new', as: :login
  post 'session' => 'sessions#create', as: :session
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
