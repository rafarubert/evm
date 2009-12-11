class DistribuidoresController < ApplicationController
  # GET /distribuidores
  # GET /distribuidores.xml
  def index
    @distribuidores = Distribuidor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @distribuidores }
    end
  end

  # GET /distribuidores/1
  # GET /distribuidores/1.xml
  def show
    @distribuidor = Distribuidor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @distribuidor }
    end
  end

  # GET /distribuidores/new
  # GET /distribuidores/new.xml
  def new
    @distribuidor = Distribuidor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @distribuidor }
    end
  end

  # GET /distribuidores/1/edit
  def edit
    @distribuidor = Distribuidor.find(params[:id])
  end

  # POST /distribuidores
  # POST /distribuidores.xml
  def create
    @distribuidor = Distribuidor.new(params[:distribuidor])

    respond_to do |format|
      if @distribuidor.save
        flash[:notice] = 'Distribuidor was successfully created.'
        format.html { redirect_to(@distribuidor) }
        format.xml  { render :xml => @distribuidor, :status => :created, :location => @distribuidor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @distribuidor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /distribuidores/1
  # PUT /distribuidores/1.xml
  def update
    @distribuidor = Distribuidor.find(params[:id])

    respond_to do |format|
      if @distribuidor.update_attributes(params[:distribuidor])
        flash[:notice] = 'Distribuidor was successfully updated.'
        format.html { redirect_to(@distribuidor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @distribuidor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /distribuidores/1
  # DELETE /distribuidores/1.xml
  def destroy
    @distribuidor = Distribuidor.find(params[:id])
    @distribuidor.destroy

    respond_to do |format|
      format.html { redirect_to(distribuidores_url) }
      format.xml  { head :ok }
    end
  end
end
