Rails.application.routes.draw do
  get 'dashboard/edit'
  get 'dashboard/update'
  get 'dashboard/show'
  get 'dashboard/delete'
  get 'domains/index'
  get 'domains/show'
  get 'domains/update'
  get 'domains/destroy'
  get 'domains/new'
  root to: "domains#index"
  devise_for :users
  resources :tips
  resources :topics
  resources :domains
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
