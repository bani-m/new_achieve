class AddUsersToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :User_id, :integer
  end
end
