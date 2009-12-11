class LanceUnicosController < ApplicationController
  # GET /lance_unicos
  # GET /lance_unicos.xml
  def index
    @lance_unicos = LanceUnico.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lance_unicos }
    end
  end

  # GET /lance_unicos/1
  # GET /lance_unicos/1.xml
  def show
    @lance_unico = LanceUnico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lance_unico }
    end
  end

  # GET /lance_unicos/new
  # GET /lance_unicos/new.xml
  def new
    @lance_unico = LanceUnico.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lance_unico }
    end
  end

  # GET /lance_unicos/1/edit
  def edit
    @lance_unico = LanceUnico.find(params[:id])
  end

  # POST /lance_unicos
  # POST /lance_unicos.xml
  def create
    @lance_unico = LanceUnico.new(params[:lance_unico])

    respond_to do |format|
      if @lance_unico.save
        flash[:notice] = 'LanceUnico was successfully created.'
        format.html { redirect_to(@lance_unico) }
        format.xml  { render :xml => @lance_unico, :status => :created, :location => @lance_unico }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lance_unico.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lance_unicos/1
  # PUT /lance_unicos/1.xml
  def update
    @lance_unico = LanceUnico.find(params[:id])

    respond_to do |format|
      if @lance_unico.update_attributes(params[:lance_unico])
        flash[:notice] = 'LanceUnico was successfully updated.'
        format.html { redirect_to(@lance_unico) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lance_unico.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lance_unicos/1
  # DELETE /lance_unicos/1.xml
  def destroy
    @lance_unico = LanceUnico.find(params[:id])
    @lance_unico.destroy

    respond_to do |format|
      format.html { redirect_to(lance_unicos_url) }
      format.xml  { head :ok }
    end
  end
end
