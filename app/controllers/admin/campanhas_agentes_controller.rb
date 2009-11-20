class Admin::CampanhasAgentesController < ApplicationController
  layout "admin"
  def index
    @campanhas_agentes = CampanhasAgente.all
  end

  def show
    @campanhas_agente = CampanhasAgente.find(params[:id])
  end

  def new
    @campanhas_agente = CampanhasAgente.new
  end

  def edit
    @campanhas_agente = CampanhasAgente.find(params[:id])
  end

  def create
    @campanhas_agente = CampanhasAgente.new(params[:campanhas_agente])

    if @campanhas_agente.save
      flash[:notice] = 'CampanhasAgente was successfully created.'
      redirect_to(@campanhas_agente)
    else
      render :action => "new"
    end
  end

  def update
    @campanhas_agente = CampanhasAgente.find(params[:id])

    respond_to do |format|
      if @campanhas_agente.update_attributes(params[:campanhas_agente])
        flash[:notice] = 'CampanhasAgente was successfully updated.'
        format.html { redirect_to(@campanhas_agente) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @campanhas_agente.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @campanhas_agente = CampanhasAgente.find(params[:id])
    @campanhas_agente.destroy

    respond_to do |format|
      format.html { redirect_to(campanhas_agentes_url) }
      format.xml  { head :ok }
    end
  end
end
