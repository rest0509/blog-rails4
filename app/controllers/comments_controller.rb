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

   	redirect_to post_path(@comment.post)

   else

   	 render new
   
   end

  end

  private

  def post_params
      params.require(:comment).permit(:content, :post_id)
    end
end
