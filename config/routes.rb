Rails.application.routes.draw do
  root to: 'top#index'

  # For OmniAuth
  get '/auth/:provider/callback', to: 'sessions#callback'
  get '/auth/failure',            to: 'sessions#failure'
  get '/logout',                  to: 'sessions#destroy', as: :logout

  # tweet
  post '/top/tweet', to: 'top#tweet', as: :tweet

  # My TL
  get '/top/get', to: 'top#get'

  # Follow Check
  post '/follow_check', to: 'top#follow_check', as: :follow_check

  # tweets search
  post '/search', to: 'top#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
