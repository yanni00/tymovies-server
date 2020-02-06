class DeleteUserNameFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :userName
  end
end
