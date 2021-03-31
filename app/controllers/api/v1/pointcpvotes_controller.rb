class Api::V1::PointcpvotesController < ApplicationController
    skip_before_action :require_login

    def index
        votes = Pointcpvote.all
        render json: {votes: PointcpvoteSerializer.new(votes)}
    end

    def show
    end

    def create
        # @factory = Factory.find(params[:factory_id])
        # pointcp = Pointcp.find(2)
        # @widget = @factory.widgets.build(widget_params)
        # vote = pointcp.pointcpvotes.build(pointcpvotes_params)

        p = Pointcpvote.all.where(pointcp_id: params["pointcp_id"]).where(user_id: params["user_id"])  # && post_id: params["post_id"]
        if p.empty? 
            vote = Pointcpvote.new

            vote.user_id = params["user_id"]
            vote.pointcp_id = params["pointcp_id"]

            if params["articleOneVote"] == 1
                vote.articleOneVote = params["articleOneVote"]

                if vote.save 
                    # byebug
                    # Pointcpvote.all.where(pointcp_id: params["pointcp_id"].to_i).count
                    render json: {
                        success: "Thank you for voting!"
                    }
                else
                    render json: {
                        failure: "Unable To Vote At This Time."
                    }
                end
        
            end

            if params["articleTwoVote"] == 1
                vote.articleTwoVote = params["articleTwoVote"]

                if vote.save 
                    render json: {
                        success: "Thank you for voting!"
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

    def pointcpvotes_params
        params.require(:pointcpvote).permit(:id, :articleOneVote, :articleTwoVote, :user_id, :pointcp_id)
    end

end
