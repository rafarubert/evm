ActionController::Routing::Routes.draw do |map|
  map.resources :lance_unicos

  
  map.namespace :admin do |admin|
    admin.resources :campanha_agentes
    admin.resources :campanhas
    admin.resources :campanha_relacao
    admin.resources :vendedores
    admin.resources :agentes
    admin.resources :vendedores_ranking
    admin.resources :lance_unicos
    admin.resources :produtos
    admin.resources :premios
    admin.resources :relatorio
  end
  map.root :controller=>"campanhas"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
