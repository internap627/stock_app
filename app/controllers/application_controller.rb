class ApplicationController < ActionController::Base
  helper_method :user
  helper_method :current_user, :logged_in?, :user, :authorized?
  def user
    if session[:user_id] != nil
      user = User.find(session[:user_id])
      if !user
        return nil
      else
        user
      end
    end
  end

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
      User.new
    end
  end

  def logged_in?
    !!current_user.id
  end

  def authorized?
    if !logged_in?
      flash[:authorized] = "Please log in to be able to view this page"
      redirect_to login_path and return

    end
  end

  def authorized_for(user_id)
    if session[:user_id] == @user.id
      true
    else
      flash[:authorized] = "You only have access to your user page"
      redirect_to current_user
    end
  end
end
