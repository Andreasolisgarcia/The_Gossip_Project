class DinamicController < ApplicationController

 def welcome
   puts "*"*30
   puts "Salut, je suis dans le serveur"
   puts "Ceci est mon super params : #{params["name"]}"
   @name = params["name"]
   puts @name
end

end
