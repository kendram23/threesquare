Threesquare::Application.routes.draw do
  
  root 'locations#index'
  resources :locations do
  	resources :ratings
  end

end
