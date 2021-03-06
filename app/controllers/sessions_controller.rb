class SessionsController < ApplicationController
  def create
  @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to(@user)
    else
      redirect_to('/')
    end
  end

  def destroy
    session.clear
    redirect_to('/')
  end
end
