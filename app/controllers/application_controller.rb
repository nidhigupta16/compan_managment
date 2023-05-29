class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource_or_scope)
    'localhost:3000'
  end
end
