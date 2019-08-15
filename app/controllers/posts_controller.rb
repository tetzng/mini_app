class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show, :update, :destroy]
  before_action :move_to_index, except: [:index, :show, :new]

  def index
    @posts = Post.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    redirect_to new_user_session_path unless user_signed_in?
  end

  def create
    @post = Post.create(post_params)
    redirect_to root_path
  end

  def edit
  end

  def show
    @comments = @post.comments.page(params[:page]).per(5).order("id DESC")
  end

  def update
    if @post.user.id == current_user.id
      @post.update(post_params)
      redirect_to root_path
    end
  end

  def destroy
    @post.destroy if @post.user == current_user
    redirect_to root_path
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :text, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
