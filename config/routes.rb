Rails.application.routes.draw do
  resources :vecinos
  resources :residencias
  resources :personas
  resources :familias
  root to: 'padrones#index'

  resources :registros do
    get '/new/:padron_id', to: 'registros#new', on: :collection, as: 'new'
  end

  resources :residencias do
    get '/new/:registro_id', to: 'residencias#new', on: :collection, as: 'new'
  end

  resources :vecinos do
    get '/new/:residencia_id', to: 'vecinos#new', on: :collection, as: 'new'
  end

  resources :nombre_calles do
    get '/new_nombre_calle/:calle_id', to: 'nombre_calles#new_nombre_calle', on: :collection, as: 'new_nombre_calle'
  end
  resources :calles
  resources :distritos
  resources :padrones
  resources :barrios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  #
  # resources :transactions do
  #   get :history, on: :collection
  # end

end
