class UsersController < ApplicationController
  def index
    @users = User.all
  end

def show
@user = User.find(params[:id])
end

def followed_users
  @users = @user.followed_users
end

def followers
  @users = @user.followers
end


end
