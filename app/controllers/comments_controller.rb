class CommentsController < ApplicationController
    def create
        @house = House.find(params[:house_id])
        @comment = @house.comments.create(comment_params)
        redirect_to house_path(@house)
    end

    def destroy
        @house = House.find(params[:house_id])
        @comment = @house.comments.find(params[:id])
        @comment.destroy
        redirect_to house_path(@house)
    end
    
    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
end
