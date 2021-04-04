# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def index
        users = User.all
        render json: { status: 'SUCCESS', message: 'Loaded users', data: users }, status: :ok
      end

      def show
        user = User.find(params[:id])
        render json: { status: 'SUCCESS', message: 'Loaded user', data: user }, status: :ok
      end

      def create
        user = User.new(user_params)

        if user.save
          render json: { status: 'SUCCESS', message: 'Save user', data: user }, status: :ok
        else
          render json: { status: 'ERROR', message: 'User not saved', data: user.errors }, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.params[:username, :password]
      end

    end
  end
end
