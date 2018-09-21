Rails.application.routes.draw do
  root "tasks#index"

  resources :tasks

  patch '/tasks/:id/mark_complete', to: 'tasks#mark_complete', as: 'mark_complete_task'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
