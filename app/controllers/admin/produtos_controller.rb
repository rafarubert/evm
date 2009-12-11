class Admin::ProdutosController < ApplicationController

  layout "admin"
  def index
    @produtos = Produto.paginate :per_page=>"5", :page=>params[:page], :order=>"nome ASC"
    @produto = Produto.new
    
  end

  # GET /produtos/1
  # GET /produtos/1.xml
  def show
    @produto = Produto.find(params[:id])

   
  end

  # GET /produtos/new
  # GET /produtos/new.xml
  def new
    @produto = Produto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @produto }
    end
  end

  # GET /produtos/1/edit
  def edit
    @produtos = Produto.paginate :per_page=>"5", :page=>params[:page], :order=>"nome ASC"
    @produto = Produto.find(params[:id])
    render :action=>"index"
  end

  # POST /produtos
  # POST /produtos.xml
  def create
    @produto = Produto.new(params[:produto])

    respond_to do |format|
      if @produto.save
        flash[:notice] = 'Produto was successfully created.'
        format.html { redirect_to([:admin, @produto]) }
        format.xml  { render :xml => @produto, :status => :created, :location => @produto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @produto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /produtos/1
  # PUT /produtos/1.xml
  def update
    @produto = Produto.find(params[:id])

    respond_to do |format|
      if @produto.update_attributes(params[:produto])
        flash[:notice] = 'Produto was successfully updated.'
        format.html { redirect_to([:admin, @produto]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @produto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /produtos/1
  # DELETE /produtos/1.xml
  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy

    respond_to do |format|
      format.html { redirect_to(admin_produtos_url) }
      format.xml  { head :ok }
    end
  end

end
