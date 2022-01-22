class ApplicationController < ActionController::API
        before_action :configure_permitted_paramiters, if: :devise_controller?

   protected

   def configure_permitted_paramiters
        devise_paramiter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
   end
end
