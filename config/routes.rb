Rails.application.routes.draw do

  get '/reviews' => 'reviews#index'
  post '/reviews' => 'reviews#create'
  get '/comments' => 'comments#index'
  post '/comments' => 'comments#create'

  # scope '/api' do
  #   post 'user_token' => 'user_token#create'
  #
  # end

  post 'api/user_token' => 'user_token#create'

    resources :users

  get 'user/current' => 'users#current'




  # resources :users


  # root 'session#new'

  # get 'about' => 'pages#about'


  # Session (login form/form submit/logout) routes:
  # get '/login' => 'session#new'        # login platforms
  # post '/login' => 'session#create'    # form submit, check credentials, create Session
  # delete '/login' => 'session#destroy' # logout (delete session)

  # resources :users

end
