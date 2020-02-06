class CommentsController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def index
    render json: Comment.all
  end

end
