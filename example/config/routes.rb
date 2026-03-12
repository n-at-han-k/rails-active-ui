Rails.application.routes.draw do
  mount Ui::Engine => "/ui"

  get "up" => "rails/health#show", as: :rails_health_check

  root "examples#index"

  get "examples"              => "examples#index"
  get "examples/login"        => "examples#login"
  get "examples/homepage"     => "examples#homepage"
  get "examples/fixed"        => "examples#fixed"
  get "examples/attached"     => "examples#attached"
  get "examples/sticky"       => "examples#sticky"
  get "examples/grid"         => "examples#grid"
  get "examples/bootstrap"    => "examples#bootstrap"
  get "examples/responsive"   => "examples#responsive"
end
