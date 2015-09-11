Rails.application.routes.draw do
  get 'items/create'

  get 'items/show'

  get 'items/update'

  get 'tasks/show'
  
  get 'tasks/new'

  get 'tasks/update'

  get 'tasks/create'

  get 'tasks/destroy'

  get 'users/show'

  get 'users/update'

  devise_for :users
  
  resources :users, only: [:show] do
    resources :items
  end
  
  get 'welcome/index'

  get 'welcome/tasks'

   root to: 'welcome#index'

  
end
