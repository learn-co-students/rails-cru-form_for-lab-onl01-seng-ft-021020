Rails.application.routes.draw do
  # get 'artists/create'

  # get 'artists/update'

  # get 'artists/show'

  # get 'songs/create'

  # get 'songs/update'

  # get 'songs/show'

  # get 'genres/create'

  # get 'genres/update'

  # get 'genres/show'

  # get 'song/dashboard'

  # get 'song/create'

  # get 'song/update'

  # get 'song/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :genres
resources :songs
resources :artists

end
