class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :userName
      t.string :name
      t.string :movieTitle
      t.string :movieRating
      t.text :userReview

      t.timestamps
    end
  end
end
