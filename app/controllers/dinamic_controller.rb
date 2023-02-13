class DinamicController < ApplicationController
 def index
 end
 def gossip
    @id = params["id"].to_i
    @gossip = Gossip.find(@id)
 end

 def welcome
   puts "*"*30
   puts "Salut, je suis dans le serveur"
   puts "Ceci est mon super params : #{params["name"]}"
   @name = params["name"]
   puts @name
end
end
