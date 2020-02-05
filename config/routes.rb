Rails.application.routes.draw do
  # scope '/api' do
  #   post 'user_token' => 'user_token#create'
  #
  # end

  post 'api/user_token' => 'user_token#create'

    resources :users

  # resources :users


  # root 'session#new'

  # get 'about' => 'pages#about'


  # Session (login form/form submit/logout) routes:
  # get '/login' => 'session#new'        # login platforms
  # post '/login' => 'session#create'    # form submit, check credentials, create Session
  # delete '/login' => 'session#destroy' # logout (delete session)

  # resources :users

end
