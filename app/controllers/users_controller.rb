class UsersController < ApplicationController

  def show
   @id = params["id"].to_i
   @user = User.find(@id)
  end
  def new
    @user= User.new
  end

  def create
    puts params.inspect
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], description: params[:description], email: params[:email], age: params[:age])
    @user.city = City.find(params[:city_id].to_i)
    if params[:user][:new_city_name].present?
      city = City.create(name: params[:user][:new_city_name])
      @user.city = city
    end
    if @user.save
      flash[:success] = "Your account has been successfully created"
      redirect_to @user
     
    else
      puts @user.errors.full_messages
      render :new
    end
  end

  
end
