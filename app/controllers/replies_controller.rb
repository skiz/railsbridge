class RepliesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :load_post

  def new
    @reply = @post.replies.new
  end

  def create
    @reply = @post.replies.new(params[:reply])
    @reply.user = current_user
    if @reply.save
      flash[:notice] = "Reply successfully saved"
      redirect_to @post
    else
      flash[:notice] = "Unable to save reply!"
      render action: new
    end
  end

  protected

  def load_post
    @post = Post.find_by_id(params[:post_id])
    unless @post
      flash[:notice] = "No such post"
      redirect_to root_path
    end
  end
end
