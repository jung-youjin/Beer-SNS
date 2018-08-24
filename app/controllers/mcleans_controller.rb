class McleansController < ApplicationController
  before_action :set_mclean, only: [:show, :edit, :update, :destroy]

  # GET /mcleans
  # GET /mcleans.json
  def index
    @mcleans = Mclean.all
  end

  # GET /mcleans/1
  # GET /mcleans/1.json
  def show
  end

  # GET /mcleans/new
  def new
    @mclean = Mclean.new
  end

  # GET /mcleans/1/edit
  def edit
  end

  # POST /mcleans
  # POST /mcleans.json
  def create
    @mclean = Mclean.new(mclean_params)

    respond_to do |format|
      if @mclean.save
        format.html { redirect_to @mclean, notice: 'Mclean was successfully created.' }
        format.json { render :show, status: :created, location: @mclean }
      else
        format.html { render :new }
        format.json { render json: @mclean.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mcleans/1
  # PATCH/PUT /mcleans/1.json
  def update
    respond_to do |format|
      if @mclean.update(mclean_params)
        format.html { redirect_to @mclean, notice: 'Mclean was successfully updated.' }
        format.json { render :show, status: :ok, location: @mclean }
      else
        format.html { render :edit }
        format.json { render json: @mclean.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mcleans/1
  # DELETE /mcleans/1.json
  def destroy
    @mclean.destroy
    respond_to do |format|
      format.html { redirect_to mcleans_url, notice: 'Mclean was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mclean
      @mclean = Mclean.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mclean_params
      params.require(:mclean).permit(:email, :title, :content, :review_count)
    end
end
