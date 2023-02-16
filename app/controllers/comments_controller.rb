class CommentsController < ApplicationController
    before_action :set_gossip

    def edit 
        @comment = @gossip.comments.find(params[:id])
    end

    def update
        @comment= Comment.find(params[:id])
        if @comment.update(comment_params)
          flash[:success] = "You got it! New info updated!"
          redirect_to gossip_path(@comment.gossip)
        end
    end

    def create
        @comment = @gossip.comments.create(comment_params)
        if @comment.save
          flash[:success] = "Comment added correctly"
        else
          flash[:alert] = "Comment has not been created"
        end
        redirect_to gossip_path(@gossip)
    end

    def destroy
        @comment = @gossip.comments.find(params[:id])
        if @comment.destroy
            flash[:success] = "Comment deleted correctly"
        redirect_to gossip_path(@gossip)
        end
    end 

   
    private
    def set_gossip
        @gossip = Gossip.find(params[:gossip_id])
    end 

    def comment_params
        params.require(:comment).permit(:content, :user_id, :gossip_id)
      end
end
