class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action do
    params.permit!
  end
end
