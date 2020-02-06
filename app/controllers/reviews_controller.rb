class ReviewsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    render json: Review.all
  end

end
