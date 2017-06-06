class UsersController < ApplicationController

  before_filter :set_user, :only => [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create(params[:user])
    redirect_to users_path
  end

  def show
  end

  def edit
  end

  def update
    @user.update_attributes(params[:user])
    redirect_to users_path
  end

  def destroy
    if @user.id.odd?
      @user.destroy
    else
      flash[:odd_id] = 'You can delete only users with odd Id (impair)'
    end
    redirect_to users_path
  end

  def set_user
    @user = User.find(params[:id])
  end

end
