Threesquare::Application.routes.draw do
  
  root 'static_pages#home'
  resources :locations

end
