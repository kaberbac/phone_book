class PostsController < ApplicationController
  before_filter :set_user
  before_filter :set_post, :except => [:create]
  
  def index

    @posts = @user.posts
  end

  def new

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
    @post.update_attributes(params[:post].merge(user_id: @user.id))
    redirect_to user_posts_path
  end

  def destroy
    @post.destroy
    redirect_to user_posts_path
  end

  def set_post

    if params[:id].present?
      @post = @user.posts.find(params[:id])
    else
      @post = Post.new
    end
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
