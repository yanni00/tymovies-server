class RenameUserCommentInComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :userComment, :body
  end
end
