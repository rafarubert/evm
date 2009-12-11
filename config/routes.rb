ActionController::Routing::Routes.draw do |map|
  
  map.namespace :admin do |admin|
    admin.resources :campanha_agentes
    admin.resources :campanhas
    admin.resources :campanha_relacao
    admin.resources :vendedores
    admin.resources :agentes
    admin.resources :vendedores_ranking
    admin.resources :lance_unico
  end

  map.root :controller => "main"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
