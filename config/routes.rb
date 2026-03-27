Rails.application.routes.draw do
  resources :examples, only: [ :index ]
end
