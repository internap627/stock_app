class ApplicationController < ActionController::Base
  helper_method :user
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
end
