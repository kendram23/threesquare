Threesquare::Application.routes.draw do
  
  root 'static_pages#home'

  get '/locations/index'    => 'locations#index', as: 'locations'

end
