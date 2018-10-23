class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
   if params[:user][:password] == params[:user][:password_confirmation]
     user = User.create(name: params[:user][:name], username: params[:user][:username], password: params[:user][:password], broker_id: params[:user][:broker_id])
     byebug
     session[:user_id] = user.id
     redirect_to brokers_path
   else
     redirect_to new_user_path
   end
 end

end
