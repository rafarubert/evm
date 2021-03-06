class Admin::PremiosController < ApplicationController
  layout "admin"
  # GET /premios
  # GET /premios.xml
  def index
    @premios = Premio.paginate :per_page=>5, :page=>params[:page]
    @premio = Premio.new
 
  end

  # GET /premios/1
  # GET /premios/1.xml
  def show
    @premio = Premio.find(params[:id])

    
  end

  # GET /premios/new
  # GET /premios/new.xml
  def new
    @premio = Premio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @premio }
    end
  end

  # GET /premios/1/edit
  def edit
    @premio = Premio.find(params[:id])
    @premios = Premio.paginate :per_page=>5, :page=>params[:page]
    render :action=>"index"
  end

  # POST /premios
  # POST /premios.xml
  def create
    @premio = Premio.new(params[:premio])

    respond_to do |format|
      if @premio.save
        flash[:notice] = 'Premio was successfully created.'
        format.html { redirect_to([:admin, @premio]) }
        format.xml  { render :xml => @premio, :status => :created, :location => @premio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @premio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /premios/1
  # PUT /premios/1.xml
  def update
    @premio = Premio.find(params[:id])

    respond_to do |format|
      if @premio.update_attributes(params[:premio])
        flash[:notice] = 'Premio was successfully updated.'
        format.html { redirect_to([:admin, @premio]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @premio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /premios/1
  # DELETE /premios/1.xml
  def destroy
    @premio = Premio.find(params[:id])
    @premio.destroy

    respond_to do |format|
      format.html { redirect_to(admin_premios_url) }
      format.xml  { head :ok }
    end
  end

end
