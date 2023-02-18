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
  
    def destroy
      if session.delete(:user_id)
        flash[:success] = "See ya later!"
        redirect_to '/welcome'
      end
    end
end
