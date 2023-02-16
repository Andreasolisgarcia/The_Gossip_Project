class CitiesController < ApplicationController
    def show
        @city = City.find((params[:id]).to_i)
        @users_in_city = User.where(city_id: @city.id)
        @gossips_in_city = Gossip.where(user: @users_in_city)
    end
end
