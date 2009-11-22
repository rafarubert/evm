class CampanhaProdutosController < ApplicationController
  # GET /campanha_produtos
  # GET /campanha_produtos.xml
  def index
    @campanha_produtos = CampanhaProduto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @campanha_produtos }
    end
  end

  # GET /campanha_produtos/1
  # GET /campanha_produtos/1.xml
  def show
    @campanha_produto = CampanhaProduto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @campanha_produto }
    end
  end

  # GET /campanha_produtos/new
  # GET /campanha_produtos/new.xml
  def new
    @campanha_produto = CampanhaProduto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @campanha_produto }
    end
  end

  # GET /campanha_produtos/1/edit
  def edit
    @campanha_produto = CampanhaProduto.find(params[:id])
  end

  # POST /campanha_produtos
  # POST /campanha_produtos.xml
  def create
    @campanha_produto = CampanhaProduto.new(params[:campanha_produto])

    respond_to do |format|
      if @campanha_produto.save
        flash[:notice] = 'CampanhaProduto was successfully created.'
        format.html { redirect_to(@campanha_produto) }
        format.xml  { render :xml => @campanha_produto, :status => :created, :location => @campanha_produto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @campanha_produto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /campanha_produtos/1
  # PUT /campanha_produtos/1.xml
  def update
    @campanha_produto = CampanhaProduto.find(params[:id])

    respond_to do |format|
      if @campanha_produto.update_attributes(params[:campanha_produto])
        flash[:notice] = 'CampanhaProduto was successfully updated.'
        format.html { redirect_to(@campanha_produto) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @campanha_produto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /campanha_produtos/1
  # DELETE /campanha_produtos/1.xml
  def destroy
    @campanha_produto = CampanhaProduto.find(params[:id])
    @campanha_produto.destroy

    respond_to do |format|
      format.html { redirect_to(campanha_produtos_url) }
      format.xml  { head :ok }
    end
  end
end
