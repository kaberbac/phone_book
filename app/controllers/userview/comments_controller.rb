class Userview::CommentsController < ApplicationController
  before_filter :set_post
  before_filter :set_comment, :only => [:show, :edit, :update, :destroy]


  def index
    @comments = @post.comments
  end

  def new
    @comment = Comment.new
  end

  def create

    #@post.comments.create!(params[:comment])

    @comment = @post.comments.new(params[:comment])
    #@comment.user = User.find(user.id)
    if params[:new_user].present?
      @user = User.find_by_name(params[:new_user])
      if @user.nil?
        @user = User.new(name: params[:new_user])
        @user.save
      end
      @comment.user = @user

    end

    #@comment.user = @user unless params[:new_user].empty?


    @comment.save
    redirect_to userview_post_path(@post.id)


  end

  def show
  end

  def edit
  end

  def update
    @comment.update_attributes(params[:comment])
    redirect_to userview_post_comments_path
  end

  def destroy
    @comment.destroy
    redirect_to userview_post_comments_path
  end

  def set_comment
    @comment = @post.comments.find(params[:id])
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

end
