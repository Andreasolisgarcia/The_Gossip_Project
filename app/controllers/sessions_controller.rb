class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          flash[:success] = "You have successfully logged in."
          redirect_to profile_path
        else
          flash.now[:danger] = "Invalid email or password."
          render :new
        end
    end
end