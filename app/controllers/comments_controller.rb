class CommentsController < ApplicationController
  def new
  end

  def create

    newComment = Comment.create name:'', userComment: params[:userComment]   

    puts "NEW USER"
    p newComment

    if newComment.persisted?
      puts "================= SUCCESS"
      render json: {created: true, comment: newComment }
    else
      puts "+++++++++++++++++++++++"
      render json: {errors: newComment.errors.full_messages, }, status: 422
    end
  end

  def update
  end

  def index
    render json: Comment.all
  end

end
