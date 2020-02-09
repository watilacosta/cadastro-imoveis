class ApplicationController < ActionController::Base
	include ApplicationHelper
	
	before_action :configure_permitted_parameters, if: :devise_controller?
	
	rescue_from CanCan::AccessDenied do |exception|
		redirect_to '/', :alert => exception.message
	end
	
	rescue_from ActiveRecord::RecordNotFound, :with => :render_404
	
	def render_404
		redirect_to main_app.root_url
	end
	
	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :role, :endereco])
	end
end
