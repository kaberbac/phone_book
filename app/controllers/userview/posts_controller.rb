class Userview::PostsController < ApplicationController

  before_filter :set_post, :only => [:show, :edit, :update, :destroy]


  def index
    # list all posts from any User, ordered by created_at DESC
    @posts = Post.order("created_at DESC")
  end

  def show
    @comments = @post.comments
  end
  # show a specific post, its title, content and author (user).
  # step2: list all comments under the details of the post
  # step3: show a form to add a comment under all the other comments

  def set_post
    @post = Post.find(params[:id])
  end
end