class ApplicationController < ActionController::API
  include ExceptionHandler

  # called before every action on controllers
  before_action :authorize_request!
  attr_accessor :current_user

  private

  # Check for valid request token and return user
  def authorize_request!
    @current_user = AuthorizeApiRequest.new(request.headers, request.ip).call[:user]
  end
end
