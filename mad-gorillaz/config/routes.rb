Rails.application.routes.draw do

  get 'users/create'

  get 'users/new'

  get 'users/edit'

  get 'users/show'

  get 'users/destroy'

  get 'users/update'

  get 'sessions/login'

  get 'sessions/logout'

  get 'sessions/signup'

  get 'surveys/create'

  get 'surveys/new'

  get 'surveys/show'

  get 'surveys/owner_display'

  get 'surveys/destroy'

  get 'surveys/edit'

  get 'surveys/update'

  ## landing page and home page when signed in
  root 'pages#home'

  ## form for new session
  get 'sessions/login'

  ## form for new user registration
  get 'sessions/signup'

  resources :surveys

  ## show survey data to owner - must authenticate owner identity
  get 'surveys/:id/owner_display' => 'surveys#owner_display'

  ## customer to submit the form on the surveys/:id page
  post 'submissions/create' => "submissions#create"

end
