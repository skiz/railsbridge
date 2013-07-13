class PostsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.user = current_user
    if @post.save
      flash[:notice] = "Post saved!"
      redirect_to post_path(@post)
    else
      flash[:notice] = "Unable to save post"
      render action: 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end


end
