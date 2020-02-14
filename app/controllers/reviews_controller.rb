class ReviewsController < ApplicationController
  # skip_before_action :verify_authenticity_token
  before_action :authenticate_user

  def index

    render json: Review.where(tmdb_movie_id: params[:movie_id]).reverse, include: {
      user: {
        only: [:name]
      },
      comments: {
        include: {
          user: { only: [:name]  }
        },
      order: "created_at DESC"  
      }
    }
  end

  def create
    review = Review.create name: params[:name], userReview: params[:content], tmdb_movie_id: params[:movieId], user_id: current_user.id
    render json: review, include: {
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
