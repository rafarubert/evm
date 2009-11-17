ActionController::Routing::Routes.draw do |map|
  map.resources :vendedores

  map.resources :campanhas_agentes

  map.namespace :admin do |admin|
    admin.resources :agentes
  end

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
