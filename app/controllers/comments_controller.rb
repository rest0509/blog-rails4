class CommentsController < ApplicationController
  
  def index

  	@comments = Comment.all

  end

  def new

  	@comment = Comment.new

  end

  def create
   
   @comment = Comment.new(post_params)
   
   if @comment.save

   	redirect_to root_path

   else

   	 render new
   
   end

  end

  private

  def post_params
      params.require(:comment).permit(:content)
    end
end
