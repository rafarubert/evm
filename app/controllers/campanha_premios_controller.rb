class CampanhaPremiosController < ApplicationController
  # GET /campanha_premios
  # GET /campanha_premios.xml
  def index
    @campanha_premios = CampanhaPremio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @campanha_premios }
    end
  end

  # GET /campanha_premios/1
  # GET /campanha_premios/1.xml
  def show
    @campanha_premio = CampanhaPremio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @campanha_premio }
    end
  end

  # GET /campanha_premios/new
  # GET /campanha_premios/new.xml
  def new
    @campanha_premio = CampanhaPremio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @campanha_premio }
    end
  end

  # GET /campanha_premios/1/edit
  def edit
    @campanha_premio = CampanhaPremio.find(params[:id])
  end

  # POST /campanha_premios
  # POST /campanha_premios.xml
  def create
    @campanha_premio = CampanhaPremio.new(params[:campanha_premio])

    respond_to do |format|
      if @campanha_premio.save
        flash[:notice] = 'CampanhaPremio was successfully created.'
        format.html { redirect_to(@campanha_premio) }
        format.xml  { render :xml => @campanha_premio, :status => :created, :location => @campanha_premio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @campanha_premio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /campanha_premios/1
  # PUT /campanha_premios/1.xml
  def update
    @campanha_premio = CampanhaPremio.find(params[:id])

    respond_to do |format|
      if @campanha_premio.update_attributes(params[:campanha_premio])
        flash[:notice] = 'CampanhaPremio was successfully updated.'
        format.html { redirect_to(@campanha_premio) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @campanha_premio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /campanha_premios/1
  # DELETE /campanha_premios/1.xml
  def destroy
    @campanha_premio = CampanhaPremio.find(params[:id])
    @campanha_premio.destroy

    respond_to do |format|
      format.html { redirect_to(campanha_premios_url) }
      format.xml  { head :ok }
    end
  end
end
