class Admin::LanceUnicosController < ApplicationController
  layout "admin"

  def index
    @lance_unicos = LanceUnico.all
    @lance_unico = LanceUnico.new

  end

  # GET /lance_unico/1
  # GET /lance_unico/1.xml
  def show
    @lance_unico = LanceUnico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lance_unico }
    end
  end

  # GET /lance_unico/new
  # GET /lance_unico/new.xml
  def new
    @lances_unicos = LanceUnico.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lance_unico }
    end
  end

  # GET /lance_unico/1/edit
  def edit
    @lance_unico = LanceUnico.find(params[:id])
  end

  # POST /lance_unico
  # POST /lance_unico.xml
  def create
    @lance_unico = LanceUnico.new(params[:lance_unico])

    respond_to do |format|
      if @lance_unico.save
        flash[:notice] = 'LanceUnico was successfully created.'
        format.html { redirect_to([:admin, @lance_unico]) }
        format.xml  { render :xml => @lance_unico, :status => :created, :location => @lance_unico }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lance_unico.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lance_unico/1
  # PUT /lance_unico/1.xml
  def update
    @lance_unico = LanceUnico.find(params[:id])

    respond_to do |format|
      if @lance_unico.update_attributes(params[:lance_unico])
        flash[:notice] = 'LanceUnico was successfully updated.'
        format.html { redirect_to([:admin, @lance_unico]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lance_unico.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lance_unico/1
  # DELETE /lance_unico/1.xml
  def destroy
    @lance_unico = LanceUnico.find(params[:id])
    @lance_unico.destroy

    respond_to do |format|
      format.html { redirect_to(admin_lance_unico_url) }
      format.xml  { head :ok }
    end
  end

end
