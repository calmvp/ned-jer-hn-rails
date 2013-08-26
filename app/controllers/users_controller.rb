class UsersController < ApplicationController
  
  def show
    @user ||= User.find(params[:id])
  end

  def new
    @user = User.new
    puts '7' * 100
    p @user 
  end

  def create
    @user = User.create(params[:user])
    redirect_to(@user)
  end
end

