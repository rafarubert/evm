class Admin::CampanhaRelacaoController < ApplicationController
  layout "admin"
  def index
    @campanhas = Campanha.all
    @campanha = Campanha.new
    @vendedores = Vendedor.all
  end
  
end
