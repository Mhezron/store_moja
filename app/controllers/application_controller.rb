class ApplicationController < ActionController::Base

  protected

  def after_sign_in_path_for(resource)
    dashboard_path  # Redirects to the dashboard
  end

end
