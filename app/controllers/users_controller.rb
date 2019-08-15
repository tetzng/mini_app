class UsersController < ApplicationController
  def index
    @users = User.page(params[:page]).per(6).order("id DESC")
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).per(6).order("created_at DESC")
  end
end
