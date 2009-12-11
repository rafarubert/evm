class Admin::CampanhaAgentesController < ApplicationController
  layout "admin"
  def index
    @campanha_agentes = CampanhaAgente.all
    @campanha_agente = CampanhaAgente.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @campanha_agentes }
    end
  end

  # GET /campanha_agentes/1
  # GET /campanha_agentes/1.xml
  def show
    @campanha_agente = CampanhaAgente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @campanha_agente }
    end
  end

  # GET /campanha_agentes/new
  # GET /campanha_agentes/new.xml
  def new
    @campanha_agente = CampanhaAgente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @campanha_agente }
    end
  end

  # GET /campanha_agentes/1/edit
  def edit
    @campanha_agente = CampanhaAgente.find(params[:id])
  end

  # POST /campanha_agentes
  # POST /campanha_agentes.xml
  def create
    @campanha_agente = CampanhaAgente.new(params[:campanha_agente])

    respond_to do |format|
      if @campanha_agente.save
        flash[:notice] = 'CampanhaAgente was successfully created.'
        format.html { redirect_to([:admin, @campanha_agente]) }
        format.xml  { render :xml => @campanha_agente, :status => :created, :location => @campanha_agente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @campanha_agente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /campanha_agentes/1
  # PUT /campanha_agentes/1.xml
  def update
    @campanha_agente = CampanhaAgente.find(params[:id])

    respond_to do |format|
      if @campanha_agente.update_attributes(params[:campanha_agente])
        flash[:notice] = 'CampanhaAgente was successfully updated.'
        format.html { redirect_to([:admin, @campanha_agente]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @campanha_agente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /campanha_agentes/1
  # DELETE /campanha_agentes/1.xml
  def destroy
    @campanha_agente = CampanhaAgente.find(params[:id])
    @campanha_agente.destroy

    respond_to do |format|
      format.html { redirect_to(admin_campanha_agentes_url) }
      format.xml  { head :ok }
    end
  end  
end
