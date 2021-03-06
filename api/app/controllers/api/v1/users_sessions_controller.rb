module Api
  module V1
    class Api::V1::UsersSessionsController < ApplicationController
      skip_before_action :verify_authenticity_token

      def create
        user = User.authenticate(params[:email], params[:password])

        if user
          token = user.create_tokens

          render json: { token: token }
        else
          head :unauthorized
        end
      end
    end
