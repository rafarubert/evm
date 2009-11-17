class CampanhasAgentesController < ApplicationController
  # GET /campanhas_agentes
  # GET /campanhas_agentes.xml
  def index
    @campanhas_agentes = CampanhasAgente.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @campanhas_agentes }
    end
  end

  # GET /campanhas_agentes/1
  # GET /campanhas_agentes/1.xml
  def show
    @campanhas_agente = CampanhasAgente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @campanhas_agente }
    end
  end

  # GET /campanhas_agentes/new
  # GET /campanhas_agentes/new.xml
  def new
    @campanhas_agente = CampanhasAgente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @campanhas_agente }
    end
  end

  # GET /campanhas_agentes/1/edit
  def edit
    @campanhas_agente = CampanhasAgente.find(params[:id])
  end

  # POST /campanhas_agentes
  # POST /campanhas_agentes.xml
  def create
    @campanhas_agente = CampanhasAgente.new(params[:campanhas_agente])

    respond_to do |format|
      if @campanhas_agente.save
        flash[:notice] = 'CampanhasAgente was successfully created.'
        format.html { redirect_to(@campanhas_agente) }
        format.xml  { render :xml => @campanhas_agente, :status => :created, :location => @campanhas_agente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @campanhas_agente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /campanhas_agentes/1
  # PUT /campanhas_agentes/1.xml
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

  # DELETE /campanhas_agentes/1
  # DELETE /campanhas_agentes/1.xml
  def destroy
    @campanhas_agente = CampanhasAgente.find(params[:id])
    @campanhas_agente.destroy

    respond_to do |format|
      format.html { redirect_to(campanhas_agentes_url) }
      format.xml  { head :ok }
    end
  end
end
