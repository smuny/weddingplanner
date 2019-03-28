class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def authorized
    redirect_to login_path unless logged_in
  end

  def current_user
    if session[:user_id]
      current_user = User.find(session[:user_id])
    end
  end

  def logged_in
    !!current_user
  end

end
