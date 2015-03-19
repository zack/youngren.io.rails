Rails.application.routes.draw do
  root 'home#index'

  get 'index' => 'home#index'
  get 'games' => 'home#games'
  get 'chart' => 'home#chart'
end
