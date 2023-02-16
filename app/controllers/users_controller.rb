class UsersController < ApplicationController

  def show
   @id = params["id"].to_i
   @user = User.find(@id)
  end
  def new
    @user= User.new
  end

  def create
    user_params["city_id"] = user_params["city_id"].to_i
    @user = User.new(user_params)
    # @user.city = City.find(params[:city_id].to_i)
    # if params[:user][:new_city_name].present?
    #   city = City.create(name: params[:user][:new_city_name])
    #   @user.city = city
    # end
      if @user.save
        flash[:success] = "Welcome to TGP"
        redirect_to @user
      else
        puts @user.errors.full_messages
        render :new
      end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :description, :email, :age, :city_id, :password, :password_confirmation)
  end

  
end
