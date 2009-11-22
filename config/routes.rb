ActionController::Routing::Routes.draw do |map|
  map.resources :premios

  map.resources :produtos

  map.resources :campanha_produtos

  map.resources :campanha_premios

  map.resources :campanha_vendedores

  map.resources :vendedores

  map.resources :vendedors

  map.resources :municipios

  map.resources :estados


  map.namespace :admin do |admin|
    admin.resources :campanhas
    admin.resources :campanha_relacao
    map.resources :agentes
  end

  map.root :controller => "main"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
