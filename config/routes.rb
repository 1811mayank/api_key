Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "generate#index"
  get "generate", to: "generate#new"
  post "generate", to: "generate#create"
  get "available", to: "generate#available"
  get "unblock", to: "unblock#edit"
  patch "unblock", to: "unblock#update"

  get "delete", to: "unblock#delete"
  delete "delete", to: "unblock#destroy"

  get "alive", to: "generate#future"
  patch "update", to: "generate#update"
end
