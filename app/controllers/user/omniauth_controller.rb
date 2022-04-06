class OmniauthController < ApplicationController
    def facebook
        @user = User.create_from_provider_data(request.env['omniauth.auth'])
        if @user.persisted?
            sign_in_and_redirect @user
        else
            flash[:error] = 'Hubo un problema registrándote con Facebook. Inténtalo de nuevo o registrate'
            redirect_to new_user_registration_url
        end
    end

    def failure
        flash[:error] = 'Hubo un problema registrándote con Facebook. Inténtalo de nuevo o registrate'
        redirect_to new_user_registration_url
    end
    
end
