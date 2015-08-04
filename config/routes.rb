Rails.application.routes.draw do

  root to: 'tropes#index'

  resources :users do
    resources :tropes
  end

  resources :tropes do
    resources :panes
  end

  resources :panes do
    resources :items
  end

get '/sign_in', to: 'users#sign_in'
post '/sign_in', to: 'users#sign_in!'
get '/sign_up', to: 'users#sign_up'
post '/sign_up', to: 'users#sign_up!'
get '/sign_out', to: 'users#sign_out'

end
