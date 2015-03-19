Rails.application.routes.draw do
  root 'home#index'

  get 'index' => 'home#index'
  get 'c3' => 'chart#c3test'
  get 'games' => 'home#games'
end
