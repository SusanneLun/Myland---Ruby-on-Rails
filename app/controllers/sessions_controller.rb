class SessionsController < ApplicationController
   def new
  end

   def create
    user = User.find_by(user_name: params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to welcome_index_url
    else
      flash[:errors] = ["Invalid username or password"]
      redirect_to login_path
    end
  end

   def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

 end
