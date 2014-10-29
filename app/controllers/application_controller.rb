class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate

  def current_user
    @current_user ||= User.find_by id: session[:user_id]
  end

  private

  def authenticate
  	@current_user = User.find_by(:id => session[:user_id]) 
  	session[:user_id] = nil unless @current_user.present?
  end

  def check_login
    redirect_to signup_path unless @current_user.present?
  end
end
