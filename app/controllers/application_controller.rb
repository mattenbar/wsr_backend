class ApplicationController < ActionController::API
    def home
        render json: {message: "Server is up and running!"}
    end

    
end
