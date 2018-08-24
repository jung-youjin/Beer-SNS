class EnjoyingsController < ApplicationController
  before_action :set_enjoying, only: [:show, :edit, :update, :destroy]

  # GET /enjoyings
  # GET /enjoyings.json
  def index
    @enjoyings = Enjoying.all
  end

  # GET /enjoyings/1
  # GET /enjoyings/1.json
  def show
  end

  # GET /enjoyings/new
  def new
    @enjoying = Enjoying.new
  end

  # GET /enjoyings/1/edit
  def edit
  end

  # POST /enjoyings
  # POST /enjoyings.json
  def create
    @enjoying = Enjoying.new(enjoying_params)

    respond_to do |format|
      if @enjoying.save
        format.html { redirect_to @enjoying, notice: 'Enjoying was successfully created.' }
        format.json { render :show, status: :created, location: @enjoying }
      else
        format.html { render :new }
        format.json { render json: @enjoying.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enjoyings/1
  # PATCH/PUT /enjoyings/1.json
  def update
    respond_to do |format|
      if @enjoying.update(enjoying_params)
        format.html { redirect_to @enjoying, notice: 'Enjoying was successfully updated.' }
        format.json { render :show, status: :ok, location: @enjoying }
      else
        format.html { render :edit }
        format.json { render json: @enjoying.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enjoyings/1
  # DELETE /enjoyings/1.json
  def destroy
    @enjoying.destroy
    respond_to do |format|
      format.html { redirect_to enjoyings_url, notice: 'Enjoying was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enjoying
      @enjoying = Enjoying.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enjoying_params
      params.require(:enjoying).permit(:email, :title, :content, :review_count)
    end
end
