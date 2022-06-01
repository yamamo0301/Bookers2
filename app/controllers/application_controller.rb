class ApplicationController < ActionController::Base
  before_action :confingure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
      home_about_path
    end

    protected

    def confingure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
