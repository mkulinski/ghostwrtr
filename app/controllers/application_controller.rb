class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :current_cart
  
  def current_cart
      if !session[:cart_id].nil?
          Cart.find(session[:cart_id])
      else
          cart = Cart.create
          session[:cart_id] = cart.id
          cart
      end
  end
  
   protected
 
   def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me, :image) }
     devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :remember_me) }
     devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password, :image) }
   end
   
    def after_sign_in_path_for(resource)
        lyrics_path
    end
    
    def after_sign_out_path_for(resource_or_scope)
        request.referrer
    end
    
end
