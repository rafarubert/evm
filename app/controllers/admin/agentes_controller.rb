class Admin::AgentesController < ApplicationController
  def index
    @agentes = Agente.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @agentes }
    end
  end

  def show
    @agente = Agente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @agente }
    end
  end

  def new
    @agente = Agente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @agente }
    end
  end

  def edit
    @agente = Agente.find(params[:id])
  end

  def create
    @agente = Agente.new(params[:agente])

    respond_to do |format|
      if @agente.save
        flash[:notice] = 'Agente cadastrado com sucesso!'
        format.html { redirect_to([:admin, @agente]) }
        format.xml  { render :xml => @agente, :status => :created, :location => @agente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @agente.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @agente = Agente.find(params[:id])

    respond_to do |format|
      if @agente.update_attributes(params[:agente])
        flash[:notice] = 'Agente atualizado com sucesso!'
        format.html { redirect_to([:admin, @agente]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @agente.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @agente = Agente.find(params[:id])
    @agente.destroy

    respond_to do |format|
      format.html { redirect_to(admin_agentes_url) }
      format.xml  { head :ok }
    end
  end

end