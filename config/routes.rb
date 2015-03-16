Rails.application.routes.draw do
  root 'home#index'

  get 'index' => 'home#index'
  get 'c3test' => 'home#c3test'
end
