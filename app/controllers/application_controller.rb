class ApplicationController < ActionController::Base

    skip_before_action :authenticate_user!, raise: false
    before_action :configure_permitted_parameters, if: :devise_controller?



    def after_sign_in_path_for(resource)
    
        if current_user.try(:admin?)
           admin_dashboard_path
        else
            root_path
        end
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :rut, :age, :avatar, :region])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :rut, :age, :avatar, :region])
   
                      
      end
end
