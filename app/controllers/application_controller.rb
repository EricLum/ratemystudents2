class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorized   #runs this before anything in the controller
  helper_method :logged_in? #allows method to be passed to views

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
    end
  end

  def logged_in?
    #determines whether there is a user logged in, passed to view
    !!current_user
  end

  def authorized
    if !logged_in?
      #basically if you're not signed in, it'll redirect you to the signin page
      redirect_to signin_path
    end
  end

end
