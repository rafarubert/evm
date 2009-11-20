class Admin::VendedoresController < ApplicationController
  layout "admin"
  def index
    @vendedores = Vendedor.all
  end

  def show
    @vendedor = Vendedor.find(params[:id])
  end

  def new
    @vendedor = Vendedor.new
  end

  def edit
    @vendedor = Vendedor.find(params[:id])
  end
  def create
    @vendedor = Vendedor.new(params[:vendedor])
    if @vendedor.save
      flash[:notice] = 'Vendedor was successfully created.'
      redirect_to(@vendedor) 
    else
      render :action => "new"
    end
  end

  def update
    @vendedor = Vendedor.find(params[:id])
    if @vendedor.update_attributes(params[:vendedor])
      flash[:notice] = 'Vendedor was successfully updated.'
      redirect_to(@vendedor)
    else
      render :action => "edit"
    end
  end

  def destroy
    @vendedor = Vendedor.find(params[:id])
    @vendedor.destroy
    
    redirect_to(vendedores_url)
  end
end
