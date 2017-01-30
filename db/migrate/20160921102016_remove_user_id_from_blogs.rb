class RemoveUserIdFromBlogs < ActiveRecord::Migration
  def change
    remove_column :blogs, :User_id, :integer
  end
end
