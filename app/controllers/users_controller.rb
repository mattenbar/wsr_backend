class UsersController < ApplicationController
    skip_before_action :require_login

    def index
        users = User.all
        render json: {
            users: users
        }
    end

    def show
        user = User.find(params[:id])
        render json:{ user: user}
    end
    
    def create
        user = User.create(user_params)
        

        # byebug
        if user.valid?
            user.email = user.email.downcase
            user.save

            Services::Hubspot::CreateContact.new(
                first_name: user.first_name,
                last_name: user.last_name,
                company_name: user.company_name,
                email: user.email,
            ).call

            payload = {user_id: user.id}
            token = encode_token(payload)

            render json: {
                status: :created,
                user: user,
                jwt: token
            }
        else
            render json: {
                status: 500,
                errors: user.errors.full_messages
            },
            status: :not_acceptable
        end
    end

    private

    def user_params
        params.permit(:first_name, :last_name, :email, :password, :password_digest, :company_name)
    end

end
