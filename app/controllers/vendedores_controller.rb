class VendedoresController < ApplicationController
  # GET /vendedores
  # GET /vendedores.xml
  def index
    @vendedores = Vendedor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vendedores }
    end
  end

  # GET /vendedores/1
  # GET /vendedores/1.xml
  def show
    @vendedor = Vendedor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vendedor }
    end
  end

  # GET /vendedores/new
  # GET /vendedores/new.xml
  def new
    @vendedor = Vendedor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vendedor }
    end
  end

  # GET /vendedores/1/edit
  def edit
    @vendedor = Vendedor.find(params[:id])
  end

  # POST /vendedores
  # POST /vendedores.xml
  def create
    @vendedor = Vendedor.new(params[:vendedor])

    respond_to do |format|
      if @vendedor.save
        flash[:notice] = 'Vendedor was successfully created.'
        format.html { redirect_to(@vendedor) }
        format.xml  { render :xml => @vendedor, :status => :created, :location => @vendedor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vendedor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vendedores/1
  # PUT /vendedores/1.xml
  def update
    @vendedor = Vendedor.find(params[:id])

    respond_to do |format|
      if @vendedor.update_attributes(params[:vendedor])
        flash[:notice] = 'Vendedor was successfully updated.'
        format.html { redirect_to(@vendedor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vendedor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vendedores/1
  # DELETE /vendedores/1.xml
  def destroy
    @vendedor = Vendedor.find(params[:id])
    @vendedor.destroy

    respond_to do |format|
      format.html { redirect_to(vendedores_url) }
      format.xml  { head :ok }
    end
  end
end
