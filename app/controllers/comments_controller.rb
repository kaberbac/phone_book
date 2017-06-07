class CommentsController < ApplicationController
  before_filter :set_user
  before_filter :set_post
  before_filter :set_comment, :only => [:show, :edit, :update, :destroy]


  def index
    @comments = @post.comments
  end

  def new
    @comment = Comment.new
  end

  def create
    @post.comments.create!(params[:comment])
    redirect_to user_post_comments_path
  end

  def show
  end

  def edit
  end

  def update
    @comment.update_attributes(params[:comment])
    redirect_to user_post_comments_path
  end

  def destroy
    @comment.destroy
    redirect_to user_post_comments_path
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
