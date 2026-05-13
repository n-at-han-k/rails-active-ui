Ui::Engine.routes.draw do
  resources :examples, only: [:index]
end
