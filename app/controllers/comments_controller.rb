class CommentsController < ApplicationController

  before_action :authenticate_user

  def new
  end

  def create

    newComment = Comment.create body: params[:body], review_id: params[:review_id], user_id: current_user.id

    puts "NEW COMMENT"
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
