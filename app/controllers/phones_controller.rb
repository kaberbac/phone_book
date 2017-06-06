class PhonesController < ApplicationController
  before_filter :set_phone, :only => [:show, :destroy, :edit, :update]

  def index
    @phones = Phone.all
  end

  def new
    @phone = Phone.new
  end

  def create
    Phone.create(params[:phone])
    redirect_to phones_path
  end

  def show
  end

  def destroy
    @phone.destroy
    redirect_to phones_path
  end

  def edit
  end

  def update
    @phone.update_attributes(params[:phone])
    redirect_to phones_path
  end

  def set_phone
    @phone = Phone.find(params[:id])
  end
end
