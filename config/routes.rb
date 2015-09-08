Rails.application.routes.draw do
  get 'tasks/show'

  get 'tasks/update'

  get 'tasks/create'

  get 'tasks/destroy'

  get 'users/show'

  get 'users/update'

  devise_for :users
  
  get 'welcome/index'

  get 'welcome/tasks'

   root to: 'welcome#index'

  
end
