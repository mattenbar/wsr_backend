class PostvotesController < ApplicationController
    skip_before_action :require_login

    def index
        votes = Postvote.all
        render json: {votes: PostvoteSerializer.new(votes)}
    end

    def show
    end

    def create

        p = Postvote.all.where(post_id: params["post_id"]).where(user_id: params["user_id"])  # && post_id: params["post_id"]
        
        if p.empty? 
            
            vote = Postvote.new
            
            vote.user_id = params["user_id"]
            vote.post_id = params["post_id"]
            vote.like = params["like"]
            vote.dislike = params["dislike"]

            if vote.save 
                render json: {
                    success: "Thank you for your vote!"
                }
            else
                render json: {
                    failure: "Unable To Vote At This Time."
                }
            end
        
           
        else
            p = p.first
            p.like = params["like"]
            p.dislike = params["dislike"]
            
            if p.save
                render json: {
                    success: "You have changed your vote."
                }
            end
        end
    end

    private

    def postvotes_params
        params.require(:postvote).permit(:id, :like, :dislike, :user_id, :post_id)
    end


end

