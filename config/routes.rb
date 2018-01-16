# == Route Map
#
#       Prefix Verb URI Pattern                        Controller#Action
#         root GET  /                                  top#index
#              GET  /auth/:provider/callback(.:format) sessions#callback
# auth_failure GET  /auth/failure(.:format)            sessions#failure
#       logout GET  /logout(.:format)                  sessions#destroy
#        tweet POST /top/tweet(.:format)               top#tweet
#      top_get GET  /top/get(.:format)                 top#get
# follow_check POST /follow_check(.:format)            top#follow_check
#       search POST /search(.:format)                  top#search
# 

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

  # RT
  get 'top/retweet', to: 'top#retweet'

  #delete
  get 'top/destroy', to: 'top#destroy'

  # tweets search
  get '/top/search', to: 'top#search'
  post '/top/search_ajax', to: 'top#search_ajax'

  #tweet stream
  get 'top/stream', to: 'top#stream'
  post '/top/stream_ajax', to: 'top#stream_ajax'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
