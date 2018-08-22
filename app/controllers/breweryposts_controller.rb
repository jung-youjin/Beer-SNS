class BrewerypostsController < ApplicationController
  before_action :set_brewerypost, only: [:show, :edit, :update, :destroy]

  # GET /breweryposts
  # GET /breweryposts.json
  def index
    @breweryposts = Brewerypost.all
  end

  # GET /breweryposts/1
  # GET /breweryposts/1.json
  def show
  end

  # GET /breweryposts/new
  def new
    @lat = params[:lat].sub("a",".")
    @lng = params[:lng].sub("a",".")
    
    @brewerypost = Brewerypost.new(:x => @lat, :y => @lng)
    
    #@brewerypost.x = params[:lat]
    #@brewerypost.y = params[:lng]
  
  end
  
  def ajaxIndex
    if params[:brewerypost_id]
      @brewerypost = Brewerypost.find(params[:brewerypost_id])
    end
    respond_to do |format|
      format.js { render 'index.json.erb' }
    end
  end

  # GET /breweryposts/1/edit
  def edit
  end

  # POST /breweryposts
  # POST /breweryposts.json
  def create
    @brewerypost = Brewerypost.new(brewerypost_params)

    respond_to do |format|
      if @brewerypost.save
        format.html { redirect_to @brewerypost, notice: 'Brewerypost was successfully created.' }
        format.json { render :show, status: :created, location: @brewerypost }
      else
        format.html { render :new }
        format.json { render json: @brewerypost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /breweryposts/1
  # PATCH/PUT /breweryposts/1.json
  def update
    respond_to do |format|
      if @brewerypost.update(brewerypost_params)
        format.html { redirect_to @brewerypost, notice: 'Brewerypost was successfully updated.' }
        format.json { render :show, status: :ok, location: @brewerypost }
      else
        format.html { render :edit }
        format.json { render json: @brewerypost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /breweryposts/1
  # DELETE /breweryposts/1.json
  def destroy
    @brewerypost.destroy
    respond_to do |format|
      format.html { redirect_to breweryposts_url, notice: 'Brewerypost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brewerypost
      @brewerypost = Brewerypost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brewerypost_params
      params.require(:brewerypost).permit(:name, :tab, :bottlebeer, :storeimage, :menuimage, :event, :x, :y)
    end
end
