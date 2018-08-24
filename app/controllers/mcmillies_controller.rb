class McmilliesController < ApplicationController
  before_action :set_mcmilly, only: [:show, :edit, :update, :destroy]

  # GET /mcmillies
  # GET /mcmillies.json
  def index
    @mcmillies = Mcmillie.all
  end

  # GET /mcmillies/1
  # GET /mcmillies/1.json
  def show
  end

  # GET /mcmillies/new
  def new
    @mcmilly = Mcmillie.new
  end

  # GET /mcmillies/1/edit
  def edit
  end

  # POST /mcmillies
  # POST /mcmillies.json
  def create
    @mcmilly = Mcmillie.new(mcmilly_params)

    respond_to do |format|
      if @mcmilly.save
        format.html { redirect_to @mcmilly, notice: 'Mcmillie was successfully created.' }
        format.json { render :show, status: :created, location: @mcmilly }
      else
        format.html { render :new }
        format.json { render json: @mcmilly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mcmillies/1
  # PATCH/PUT /mcmillies/1.json
  def update
    respond_to do |format|
      if @mcmilly.update(mcmilly_params)
        format.html { redirect_to @mcmilly, notice: 'Mcmillie was successfully updated.' }
        format.json { render :show, status: :ok, location: @mcmilly }
      else
        format.html { render :edit }
        format.json { render json: @mcmilly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mcmillies/1
  # DELETE /mcmillies/1.json
  def destroy
    @mcmilly.destroy
    respond_to do |format|
      format.html { redirect_to mcmillies_url, notice: 'Mcmillie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mcmilly
      @mcmilly = Mcmillie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mcmilly_params
      params.require(:mcmilly).permit(:email, :title, :content, :review_count)
    end
end
