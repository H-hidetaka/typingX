module Api
  module V1
    class Api::V1::UsersController < ApplicationController
      skip_before_action :require_login, only: %i[new create]
      def new
        @user = User.new
      end

      def create
        @user = User.new(user_params)
        if @user.save
          redirect_to login_path, success: t('ユーザー登録完了')
        else
          flash.now[:danger] = t('ユーザー登録失敗')
          render json: @index
        end
      end

      private

      def user_params
        params.require(:user).permit(:email, :password,
        :password_confirmation, :last_name, :first_name)
      end
    end
  end
end

# App::Controllers::Api::V1::
