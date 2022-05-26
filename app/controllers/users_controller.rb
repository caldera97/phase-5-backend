class UsersController < ApplicationController
    def index_posts
        # byebug
        user = find_user
        render json: user.posts
    end
  
    def update
        user = User.find_by(id: params[:id])
        if user
          user.update(user_params)
          render json: user
        else
          render json: { error: "User not found" }, status: :not_found
        end
    end
      
    def create
        user = User.create(user_params)
        if user.valid?
            render json: user, status: :created
        else
            render json: { errors: "username already in use" }, status: :unprocessable_entity
        end
    end

    # def edit_user
    #     user = User.find_by(username: params[:auth_username])
    #     if user && user.authenticate(password: params[:auth_password])
    #         user.update(user_params)
    #         render json: user
    #       else
    #         render json: { error: "Not authorized" }, status: :unauthorized
    #       end
    #  end

  
    def valid
        user = User.find_by(id: session[:user_id])
          # byebug
        if !!user
            render json: user, serializer: UserSerializer
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end

    def show
        user = find_user
        render json: user
    end
      
    private
  
    def find_user
        User.find(params[:id])
    end
      
    def user_params
        params.permit(:user, :username,:auth_username, :password, :auth_password, :password_confirmation, :id)
    end
end
