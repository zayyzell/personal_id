Rails.application.routes.draw do
  resources :personal_ids
  root 'personal_ids#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
