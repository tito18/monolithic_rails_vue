Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
  resources :users, only: %i[index show]

    devise_for :users,
    path: '',
    path_names: {
        sign_in: 'login',
        sign_out: 'logout',
        registration: 'signup'
    },
    controllers: {
        sessions: 'sessions',
        registrations: 'registrations'
    }
end
