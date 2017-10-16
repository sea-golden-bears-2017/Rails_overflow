class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @answer = Answer.new
    @post = Post.find(params[:id])
    @answers = @post.answers
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      @errors = @post.errors.full_messages
      render :new
    end
  end
  private
  def post_params
    params.require(:post).permit(:title, :description)
  end
end
