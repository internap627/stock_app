class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:user][:name], username: params[:user][:username], password: params[:user][:password], broker_id: params[:user][:broker_id])

    if @user.valid?
       user = User.create(name: params[:user][:name], username: params[:user][:username], password: params[:user][:password], broker_id: params[:user][:broker_id])
       session[:user_id] = user.id
       redirect_to brokers_path
     else
       flash[:errors] = @user.errors.full_messages
       render :new
       #redirect_to new_user_path
     end

 end

 private

 def user_params
   params.require(:user).permit(:name, :username, :password, :password_confirmation)
 end

end
