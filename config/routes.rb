Rails.application.routes.draw do
  get 'messages/reply'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/email_create' => 'griddler/emails#create'
  get '/photos' => 'photos#index'
  get '/photos/(:id)' => 'photos#show'

  resource :messages do
    collection do
      post 'reply'
    end
  end

end
