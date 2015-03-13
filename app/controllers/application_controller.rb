class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :require_login
 
  private
  def not_authenticated 
     
  end
  protect_from_forgery with: :exception

end