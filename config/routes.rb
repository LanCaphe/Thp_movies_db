Rails.application.routes.draw do
  root 'movies#search'
  post 'movies/search'
  get 'movies/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
