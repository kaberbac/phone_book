class PhonesController < ApplicationController
  before_filter :set_user
  before_filter :set_phone, :only => [:show, :destroy, :edit, :update]


  def index
    @phones = @user.phones
  end

  def new
    @phone = Phone.new
  end

  def create
    @user.phones.create!(params[:phone])
    redirect_to user_phones_path
  end

  def show
  end

  def destroy
    @phone.destroy
    redirect_to user_phones_path
  end

  def edit
  end

  def update
    @phone.update_attributes(params[:phone])
    redirect_to user_phones_path
  end

  def set_phone
    @phone = @user.phones.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
