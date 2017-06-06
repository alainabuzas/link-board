Rails.application.routes.draw do

  # get 'session/new'
  get "signup" => "signup#new"
  post "signup" => "signup#create"

  get "login" => "session#new"
	post "login" => "session#create"
	delete "logout" => "session#destroy"

	root 'main#index'

	get 'auth/logout' => 'auth#logout'
	get 'auth/failure' => 'auth#failure'
	get 'auth/:provider/callback' => 'auth#callback'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
