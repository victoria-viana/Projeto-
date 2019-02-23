Rails.application.routes.draw do
  resources :frota
  resources :terceirizados
  resources :colaboradors
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
