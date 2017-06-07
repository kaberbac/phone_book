class PostsController < ApplicationController
  before_filter :set_post, :only => [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(params[:post])
    redirect_to posts_path
  end

  def show
  end

  def edit
  end

  def update
    @post.update_attributes(params[:post])
    redirect_to posts_path
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
