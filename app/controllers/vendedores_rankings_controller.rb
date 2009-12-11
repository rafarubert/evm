class VendedoresRankingsController < ApplicationController
  # GET /vendedores_rankings
  # GET /vendedores_rankings.xml
  def index
    @vendedores_rankings = VendedoresRanking.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vendedores_rankings }
    end
  end

  # GET /vendedores_rankings/1
  # GET /vendedores_rankings/1.xml
  def show
    @vendedores_ranking = VendedoresRanking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vendedores_ranking }
    end
  end

  # GET /vendedores_rankings/new
  # GET /vendedores_rankings/new.xml
  def new
    @vendedores_ranking = VendedoresRanking.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vendedores_ranking }
    end
  end

  # GET /vendedores_rankings/1/edit
  def edit
    @vendedores_ranking = VendedoresRanking.find(params[:id])
  end

  # POST /vendedores_rankings
  # POST /vendedores_rankings.xml
  def create
    @vendedores_ranking = VendedoresRanking.new(params[:vendedores_ranking])

    respond_to do |format|
      if @vendedores_ranking.save
        flash[:notice] = 'VendedoresRanking was successfully created.'
        format.html { redirect_to(@vendedores_ranking) }
        format.xml  { render :xml => @vendedores_ranking, :status => :created, :location => @vendedores_ranking }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vendedores_ranking.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vendedores_rankings/1
  # PUT /vendedores_rankings/1.xml
  def update
    @vendedores_ranking = VendedoresRanking.find(params[:id])

    respond_to do |format|
      if @vendedores_ranking.update_attributes(params[:vendedores_ranking])
        flash[:notice] = 'VendedoresRanking was successfully updated.'
        format.html { redirect_to(@vendedores_ranking) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vendedores_ranking.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vendedores_rankings/1
  # DELETE /vendedores_rankings/1.xml
  def destroy
    @vendedores_ranking = VendedoresRanking.find(params[:id])
    @vendedores_ranking.destroy

    respond_to do |format|
      format.html { redirect_to(vendedores_rankings_url) }
      format.xml  { head :ok }
    end
  end
end
