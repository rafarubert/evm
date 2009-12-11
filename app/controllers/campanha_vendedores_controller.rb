class CampanhaVendedoresController < ApplicationController
  def index
    @campanha_vendedores = CampanhaVendedor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @campanha_vendedores }
    end
  end

  def show
    @campanha_vendedor = CampanhaVendedor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @campanha_vendedor }
    end
  end

  def new
    @campanha_vendedor = CampanhaVendedor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @campanha_vendedor }
    end
  end

  def edit
    @campanha_vendedor = CampanhaVendedor.find(params[:id])
  end

  def create
    @campanha_vendedor = CampanhaVendedor.new(params[:campanha_vendedor])

    respond_to do |format|
      if @campanha_vendedor.save
        flash[:notice] = 'CampanhaVendedor was successfully created.'
        format.html { redirect_to(@campanha_vendedor) }
        format.xml  { render :xml => @campanha_vendedor, :status => :created, :location => @campanha_vendedor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @campanha_vendedor.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @campanha_vendedor = CampanhaVendedor.find(params[:id])

    respond_to do |format|
      if @campanha_vendedor.update_attributes(params[:campanha_vendedor])
        flash[:notice] = 'CampanhaVendedor was successfully updated.'
        format.html { redirect_to(@campanha_vendedor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @campanha_vendedor.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @campanha_vendedor = CampanhaVendedor.find(params[:id])
    @campanha_vendedor.destroy

    respond_to do |format|
      format.html { redirect_to(campanha_vendedores_url) }
      format.xml  { head :ok }
    end
  end
end
