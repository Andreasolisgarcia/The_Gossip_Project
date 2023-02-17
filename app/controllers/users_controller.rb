class UsersController < ApplicationController

  def show
   @user = User.find(params[:id])
  end
  def new
    @user= User.new
  end

  def create
    user_params["city_id"] = user_params["city_id"].to_i
    @user = User.new(user_params)
      if @user.save
        flash[:success] = "Welcome to TGP"
        redirect_to @user
      else
        puts @user.errors.full_messages
        render :new
      end
  end

  def profile
    if session[:user_id]
      puts "session[:user_id]: #{session[:user_id]}" # Add this line
      @user = User.find(session[:user_id])
    else
      redirect_to new_session_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :description, :email, :age, :city_id, :password, :password_confirmation)
  end

  
end
