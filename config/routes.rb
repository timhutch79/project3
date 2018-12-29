Rails.application.routes.draw do
  devise_for :users
  as :user do 
  		get "signin" => 'devise/sessions#new'
  		delete "signout" => 'devise/sessions#destroy'
  		get "signup" => 'devise/registrations#new'
  	end
  root 'pages#home'
  get 'page2' => 'pages#page2'
  get 'page3' => 'pages#page3'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
