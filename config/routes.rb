Rails.application.routes.draw do

  get "/" => 'welcome#index'
  get "/billy/:name" => "welcome#show"
  get "/lorem/:words" => "welcome#lorem"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
