class ApplicationController < ActionController::Base
  before_action :set_locale

  #  时区管理
  before_action :set_timezone

  def set_timezone
    if current_user && current_user.time_zone
      Time.zone = current_user.time_zone
    end
  end

    # 语系管理
 def set_locale
   if params[:locale] && I18n.available_locales.include?( params[:locale].to_sym )
     session[:locale] = params[:locale]
   end

   I18n.locale = session[:locale] || I18n.default_locale
 end

  protect_from_forgery with: :exception

  def require_is_admin
    if !current_user.admin?
      flash[:alert] = 'You are not admin'
      redirect_to root_path
    end
  end


  helper_method :current_cart

   def current_cart
     @current_cart ||= find_cart
   end

   private

   def find_cart
     cart = Cart.find_by(id: session[:cart_id])
     if cart.blank?
       cart = Cart.create
     end
     session[:cart_id] = cart.id
     return cart
   end


end
