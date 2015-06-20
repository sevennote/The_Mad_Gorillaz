Rails.application.routes.draw do

  ## landing page and home page when signed in
  root 'pages#home'

  ## route to login session method
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create', as: 'create_session'
  ## logout of session
  delete '/logout' => 'sessions#destroy', as: 'logout'

  resources :surveys
  resources :users, only: [:create, :new]

  ## show survey data to owner - must authenticate owner identity
  get 'surveys/:id/owner_display' => 'surveys#owner_display'

  ## customer to submit the form on the surveys/:id page
  post 'submissions/create' => "submissions#create"

end
