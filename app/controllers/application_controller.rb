class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  # deviseコントローラーにストロングパラメータを追加する          
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    feeds_path
  end

  class Forbidden < ActionController::ActionControllerError
  end

  rescue_from Exception, with: :error_500 unless Rails.env.development?
  rescue_from Forbidden, with: :error_404
  rescue_from AbstractController::ActionNotFound, with: :error_404 unless Rails.env.development?
  rescue_from ActionController::RoutingError, with: :error_404 unless Rails.env.development?
  rescue_from ActiveRecord::RecordNotFound, with: :error_404 unless Rails.env.development?

  def error_500
    render file: "#{Rails.root}/public/500.html", layout: false, status: 500
  end
  def error_404
    render file: "#{Rails.root}/public/404.html", layout: false, status: 404
  end

  protected
  def configure_permitted_parameters
    # サインアップ時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # アカウント編集の時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
