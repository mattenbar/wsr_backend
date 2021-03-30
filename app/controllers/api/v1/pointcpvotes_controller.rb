class Api::V1::PointcpvotesController < ApplicationController
    skip_before_action :require_login

    def index
        votes = Pointcpvote.all
        render json: {votes: PointcpvoteSerializer.new(votes)}
    end

    def show
    end

end
