class Admin::CampanhasController < ApplicationController
  layout "admin"
  def index
    @campanha = Campanha.new
    @campanhas = Campanha.all    
    @campanha.campanha_vendedores.build
    @campanha.campanha_produtos.build
    @campanha.campanha_premios.build
    
  end

  def edit
    @campanha = Campanha.find(params[:id])
    @campanhas = Campanha.all    
    @campanha.campanha_vendedores.build
    @campanha.campanha_produtos.build
    @campanha.campanha_premios.build
    render :action => "index"
  end
  
  def create
   @campanha = Campanha.new(params[:campanha])
   render :text => params[:campanha]
   respond_to do |format|
     if @campanha.save
       flash[:notice] = 'Campanha adicionada com sucesso.'
       format.html { redirect_to(:action=>"index") }
       format.xml  { render :xml => @campanha, :status => :created, :location => @campanha }
     else
       format.html { render :action => "index" }
       format.xml  { render :xml => @campanha.errors, :status => :unprocessable_entity }
     end
   end
  end

  def update
   @campanha = Campanha.find(params[:id])

   respond_to do |format|
     if @campanha.update_attributes(params[:campanha])
       flash[:notice] = 'Campanha editada com sucesso.'
       format.html { redirect_to(:action=>"index") }
       format.xml  { head :ok }
     else
       format.html { render :action => "edit" }
       format.xml  { render :xml => @campanha.errors, :status => :unprocessable_entity }
     end
   end
  end

  def destroy
   @campanha = Campanha.find(params[:id])
   @campanha.destroy

   respond_to do |format|
     format.html { redirect_to(campanhas_url) }
     format.xml  { head :ok }
   end
  end
  
  def lista_vendedores
    render :partial => "vendedores_lista"
  end
  
end
