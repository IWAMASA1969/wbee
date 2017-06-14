Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'top#index'

  get 'tasks/index'

  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create', as: :session
  delete 'logout' => 'sessions#destroy', as: :logout

  post 'do_task' => 'do_task#create', as: :do_task
end
