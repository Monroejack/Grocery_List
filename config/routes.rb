Rails.application.routes.draw do
  root 'items#index'
  resources :items
  get 'lists' => 'items#list'
  get 'calendar' => 'items#calendar'
  get 'dashboard' => 'items#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
