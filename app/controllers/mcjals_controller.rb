class McjalsController < ApplicationController
  before_action :set_mcjal, only: [:show, :edit, :update, :destroy]

  # GET /mcjals
  # GET /mcjals.json
  def index
    @mcjals = Mcjal.all
  end

  # GET /mcjals/1
  # GET /mcjals/1.json
  def show
  end

  # GET /mcjals/new
  def new
    @mcjal = Mcjal.new
  end

  # GET /mcjals/1/edit
  def edit
  end

  # POST /mcjals
  # POST /mcjals.json
  def create
    @mcjal = Mcjal.new(mcjal_params)

    respond_to do |format|
      if @mcjal.save
        format.html { redirect_to @mcjal, notice: 'Mcjal was successfully created.' }
        format.json { render :show, status: :created, location: @mcjal }
      else
        format.html { render :new }
        format.json { render json: @mcjal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mcjals/1
  # PATCH/PUT /mcjals/1.json
  def update
    respond_to do |format|
      if @mcjal.update(mcjal_params)
        format.html { redirect_to @mcjal, notice: 'Mcjal was successfully updated.' }
        format.json { render :show, status: :ok, location: @mcjal }
      else
        format.html { render :edit }
        format.json { render json: @mcjal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mcjals/1
  # DELETE /mcjals/1.json
  def destroy
    @mcjal.destroy
    respond_to do |format|
      format.html { redirect_to mcjals_url, notice: 'Mcjal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mcjal
      @mcjal = Mcjal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mcjal_params
      params.require(:mcjal).permit(:email, :title, :content, :review_count)
    end
end
