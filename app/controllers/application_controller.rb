class ApplicationController < ActionController::Base

    skip_before_action :authenticate_user!, raise: false
    before_action :configure_permitted_parameters, if: :devise_controller?



    def after_sign_in_path_for(resource)
        if current_user.admin?
            dashboards_index_path
        else
            root_path
        end
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :rut, :age, :address, :avatar])
                      
      end
end
