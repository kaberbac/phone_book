class PostsController < ApplicationController
  before_filter :set_user
  before_filter :set_post, :only => [:show, :edit, :update, :destroy]
  
  def index
    @posts = @user.posts
  end

  def new
    @post = Post.new
  end

  def create
    @user.posts.create!(params[:post])
    redirect_to user_posts_path
  end

  def show
  end

  def edit
  end

  def update
    @post.update_attributes(params[:post])
    redirect_to user_posts_path
  end

  def destroy
    @post.destroy
    redirect_to user_posts_path
  end

  def set_post
    @post = @user.posts.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
