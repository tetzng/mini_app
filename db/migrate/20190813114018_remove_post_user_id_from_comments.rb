class RemovePostUserIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :post_user_id, :integer
  end
end
