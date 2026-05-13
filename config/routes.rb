Rails.application.routes.draw do
  mount Ui::Engine => '/ui'

  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'examples#show', defaults: { path: 'index' }

  get 'examples'       => 'examples#show', defaults: { path: 'index' }
  get 'examples/*path' => 'examples#show'
end
