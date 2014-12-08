class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action :permit_params

  private

  def permit_params
    params.permit!
  end
end
