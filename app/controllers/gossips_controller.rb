class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    gossip_params = params.require(:gossip).permit(:title, :context)
    if @gossip.update(gossip_params)
      flash[:success] = "You got it! New info updated!"
      redirect_to gossip_path(@gossip)
    end
  end
  
  def new
      @gossip = Gossip.new
  end

  def create
      @gossip = Gossip.new(title: params[:title], context: params[:context], user: User.find(id=1))
      puts @gossip.inspect
      
      if @gossip.save
        flash[:success] = " Your Gossip is here now !"
        redirect_to  gossips_path   
     end
      
  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    flash[:success] = "Now, no one will know..."
    redirect_to gossips_path
  end
    
  
    private
    
    def gossip_params
      params.require(:gossip).permit(:title, :content)
    end
  
end
