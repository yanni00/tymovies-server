class AddTmdbMovieIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :tmdb_movie_id, :string
  end
end
