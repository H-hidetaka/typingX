class ApplicationController < ActionController::API
  # before_action :require_login
  protect_from_forgery with: :null_session

  private

  def not_authenticated
    redirect_to login_url, warning: 'ログインが必要です。'
  end
end
