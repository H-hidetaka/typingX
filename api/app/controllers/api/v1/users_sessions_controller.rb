module Api
  module V1
    class Api::V1::UsersSessionsController < ApplicationController
      skip_before_action :require_login

      def new
        @user = User.new
      end

      def create
        @user = login(params[:email], params[:password])

        if @user
          redirect_back_or_to login_path, success: "ログインに成功しました"
        else
          flash.now[:danger] = "ログインに失敗しました"
          render json: @index
        end
      end

      def destroy
        logout
        redirect_to root_path, success: t('ログアウトに成功しました')
      end

    end
  end
end

# App::Controllers::Api::V1::
