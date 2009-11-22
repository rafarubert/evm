class Admin::CampanhasController < ApplicationController
  layout "admin"
  def index
    @campanhas = Campanha.all
    @campanha = Campanha.new
    @campanha.campanha_vendedores.build
    @campanha.campanha_produtos.build
    @campanha.campanha_premios.build
  end

  def show
   @campanha = Campanha.find(params[:id])
   @produto = Produto.all
  end

  def new
   @campanha = Campanha.new
  end

  def edit
   @campanha = Campanha.find(params[:id])
  end

  def create
   @campanha = Campanha.new(params[:campanha])
   
   respond_to do |format|
     if @campanha.save
       flash[:notice] = 'Campanha adicionada com sucesso.'
       format.html { redirect_to([:admin, @campanha]) }
       format.xml  { render :xml => @campanha, :status => :created, :location => @campanha }
     else
       format.html { render :action => "new" }
       format.xml  { render :xml => @campanha.errors, :status => :unprocessable_entity }
     end
   end
  end

  def update
   @campanha = Campanha.find(params[:id])

   respond_to do |format|
     if @campanha.update_attributes(params[:campanha])
       flash[:notice] = 'Campanha editada com sucesso.'
       format.html { redirect_to([:admin, @campanha]) }
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
  
end
