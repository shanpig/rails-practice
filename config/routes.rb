Rails.application.routes.draw do
  resources :engineers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "welcome" => "welcome#index"
  get "welcome/say_hello" => "welcome#say_hello"

  root :to => "welcome#say_hello"
  match ':controller(/:action(/:id))', :via => :all
end
