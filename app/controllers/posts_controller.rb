class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token
  
  def like_toggle
    like = Like.find_by(user_id: current_user.id, post_id: params[:post_id])
        
    if like.nil?
      Like.create(user_id: current_user.id, post_id: params[:post_id])
    else
      like.destroy
    end
            
      redirect_to :back
  end


  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end
  
  def beertap
    @posts = Post.all
  end

  # GET /posts/1/edit
  def edit
  end
  
  def beer
  end
  
 # def beersearchspec
   #@beerdbs = Beerdb.all
   #@beerdbs = Beerdb.where(name: params[:beersearchspec])
  #end
  
  def beermore
    # @beerdbs = Beerdb.all
  end
  
  #def  beersearchsim
    '''
    #@beerdbs = Beerdb.all
    #if params[:beersearchsim]
    #@beerdbs = Beerdb.beersearchsim(params[:beersearchsim])
    #else
    #@beerdbs = Beerdb.all
     #@beerdbs = Beerdb.where(name: params[:beersearchsim])
    end
    '''
  #end


  def mywriting
    @posts = Post.all
  end
  
  def community
    @posts = Post.all
  end
  
  def brewery
    @posts = Post.all
    @lat = params[:lat].sub("a",".")
    @lng = params[:lng].sub("a",".")
  end
  
  def brewery_new
    @posts = Post.new
    @lat = params[:lat].sub("a",".")
    @lng = params[:lng].sub("a",".")
  end
  
  def ajaxIndex
    if params[:post_id]
      @posts = Post.find(params[:post_id])
    end
    respond_to do |format|
      format.js { render 'index.js.erb' }
    end
  end


  # POST /posts
  # POST /posts.json
  
  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :image, :x, :y, :user_id)
    end
    
end