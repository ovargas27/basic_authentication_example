class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    flash[:success] = "Your User has been successfully created"
    redirect_to root_url
  end
end
