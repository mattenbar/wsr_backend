class Api::V1::PostvotesController < ApplicationController
    skip_before_action :require_login

    def index
        votes = Postvote.all
        render json: {votes: PostvoteSerializer.new(votes)}
    end

    def show
    end

    def create
        
        p = Postvote.all.where(post_id: params["post_id"]).where(user_id: params["user_id"])  # && post_id: params["post_id"]
        # byebug
        if p.empty? 
            vote = Postvote.new

            vote.user_id = params["user_id"]
            vote.post_id = params["post_id"]

            if params["like"] == 1
                vote.like = params["like"]

                if vote.save 
                    render json: {
                        success: "You have liked this article!"
                    }
                else
                    render json: {
                        failure: "Unable To Vote At This Time."
                    }
                end
        
            end

            if params["dislike"] == 1
                vote.dislike = params["dislike"]

                if vote.save 
                    render json: {
                        success: "You have disliked this article"
                    }
                else
                    render json: {
                        failure: "Unable To Vote At This Time."
                    }
                end
        
            end
        else
            render json: {
                failure: "You have already voted."
            }
        end
    end

    private

    def postvotes_params
        params.require(:postvote).permit(:id, :like, :dislike, :user_id, :post_id)
    end


end

