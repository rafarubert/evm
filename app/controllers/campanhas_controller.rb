class CampanhasController < ApplicationController
  # GET /campanhas
  # GET /campanhas.xml
  def index
    @campanhas = Campanha.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @campanhas }
    end
  end

  # GET /campanhas/1
  # GET /campanhas/1.xml
  def show
    @campanha = Campanha.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @campanha }
    end
  end

  # GET /campanhas/new
  # GET /campanhas/new.xml
  def new
    @campanha = Campanha.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @campanha }
    end
  end

  # GET /campanhas/1/edit
  def edit
    @campanha = Campanha.find(params[:id])
  end

  # POST /campanhas
  # POST /campanhas.xml
  def create
    @campanha = Campanha.new(params[:campanha])

    respond_to do |format|
      if @campanha.save
        flash[:notice] = 'Campanha was successfully created.'
        format.html { redirect_to(@campanha) }
        format.xml  { render :xml => @campanha, :status => :created, :location => @campanha }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @campanha.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /campanhas/1
  # PUT /campanhas/1.xml
  def update
    @campanha = Campanha.find(params[:id])

    respond_to do |format|
      if @campanha.update_attributes(params[:campanha])
        flash[:notice] = 'Campanha was successfully updated.'
        format.html { redirect_to(@campanha) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @campanha.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /campanhas/1
  # DELETE /campanhas/1.xml
  def destroy
    @campanha = Campanha.find(params[:id])
    @campanha.destroy

    respond_to do |format|
      format.html { redirect_to(campanhas_url) }
      format.xml  { head :ok }
    end
  end
end
