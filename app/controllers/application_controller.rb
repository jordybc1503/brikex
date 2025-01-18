class ApplicationController < ActionController::Base
  # Authentication before any action
  # before_action :authenticate_user_or_admin!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  # Custom method to authenticate both users and admins
  def authenticate_user_or_admin!
    if admin_signed_in?
      authenticate_admin!
    else
      authenticate_user!
    end
  end

  # Redirect to the appropriate dashboard after sign in
  def after_sign_in_path_for(resource)
    if resource.is_a?(Admin)
      admin_projects_path # Replace with your admin dashboard path
    else
      root_path
    end
  end

  protected

  # Permit additional parameters for sign-up and account updates
  def configure_permitted_parameters
    keys = [:email, :first_name, :middle_name, :last_name, :last_name_2, :birth_date, :photo]
    devise_parameter_sanitizer.permit(:sign_up, keys: keys)
    devise_parameter_sanitizer.permit(:account_update, keys: keys)
  end

end
