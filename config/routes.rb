Rails.application.routes.draw do
  get 'do_task/create'

  root 'top#index'

  get 'tasks/index'

  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create', as: :session
  delete 'logout' => 'sessions#destroy', as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
