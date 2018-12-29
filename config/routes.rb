Rails.application.routes.draw do
  root 'pages#home'
  get 'page2' => 'pages#page2'
  get 'page3' => 'pages#page3'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
