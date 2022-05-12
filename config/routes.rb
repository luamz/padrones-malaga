Rails.application.routes.draw do
  root to: 'padrones#index'

  resources :registros
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
