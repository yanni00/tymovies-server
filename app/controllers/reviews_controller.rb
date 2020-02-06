class ReviewsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    render json: Review.all, include: {
      user: {
        only: [:name]
      },
      comments: {
        include: {
          user: { only: [:name]  }
        }
      }
    }
  end

end
