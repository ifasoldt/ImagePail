Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/' => 'griddler/emails#create'
  get '/photos' => 'photos#index'
  get '/photos/(:id)' => 'photos#show'

end