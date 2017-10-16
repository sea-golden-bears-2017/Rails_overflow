class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to post_path(Post.find(params[:post_id]))
    else
      @errors = @answer.errors.full_messages
      @post = Post.find(params[:post_id])
      @answers = @post.answers
      render :'posts/show'
    end
  end
  private
  def answer_params
    params.require(:answer).permit(:description, :post_id)
  end
end
