class ReviewsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    render json: Review.all, include: { user: { only: [:name]  }  }
  end

  def create
    review = Review.create name: params[:name], userReview: params[:content]
    render json: {success: true, review: review}
  end
end
