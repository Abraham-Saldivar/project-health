module Api
  module V1
    class UsersController < ApplicationController
      # protect_from_forgery with: :null_session
      def index 
        users = User.all
        render json: UserSerializer.new(users, options).serialized_json
      end 

      def show
        user = User.find_by(params[:username])
        render json: UserSerializer.new(user, options).serialized_json
      end 

      def create 
        user = User.new(user_params)

        if user.save
          render json: UserSerializer.new(user).serialized_json, status: :created
        else 
          render json: {error: user.errors.messages }, status: :unprocessable_entity
        end 
      end 

      def update 
        user = User.find_by(params[:username])
        if user.update(user_params)
          render json: UserSerializer.new(user, options).serialized_json
        else 
          render json: {error: user.errors.messages }, status: 422
        end 
      end 

      def destroy 
        user = User.find_by(params[:username])
        user.m_posts.destroy_all

        if user.destroy
          head :no_content
        else 
          render json: {error: user.errors.messages }, status: 422
        end 
      end 

      private 

      def user_params
        params.require(:user).permit(:f_name, :l_name , :username, :email, :password_digest)
      end 

      def options
        @options ||= { include: %i[m_posts] }
      end
    end
  end
end 
