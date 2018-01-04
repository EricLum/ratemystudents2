class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create] #allows you to login if unauthorized
  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user and @@user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:error] = ["Username and password do not match"]
      redirect_to signin_path
    end
  end

  def destroy
    sessions[:user_id] = nil
    redirect_to signin_path
  end

end
