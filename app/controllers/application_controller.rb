class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action do
    permit_params
  end

  private

  def permit_params
    params.permit!
  end
end
