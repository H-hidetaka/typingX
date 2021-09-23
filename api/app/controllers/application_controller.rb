class ApplicationController < ActionController::API
  include ActionController::RequestForgeryProtection
  include Api::UserAuthenticator
  protect_from_forgery with: :null_session

  def set_csrf_token_header
  response.set_header('X-CSRF-Token', form_authenticity_token)
  end

  private

  def not_authenticated
    redirect_to login_url, warning: 'ログインが必要です。'
  end
end
