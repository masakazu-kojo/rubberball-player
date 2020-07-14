Rails.application.routes.draw do
  post "likes/:newplayer_id/create" => "likes#create"
  post "likes/:newplayer_id/destroy" => "likes#destroy"
  #ユーザー
  
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "login" => "users#login_form"
  get "users/:id/likes" => "users#likes"

  #新選手の投稿(postメソッド)
  resources :newplayers
  delete "newplayers/:id/destroy" => "newplayers#destroy"

  root "home#top"
  get "playerdate" => "home#playerdate"
end
