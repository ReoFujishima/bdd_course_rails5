class ApplicationController < ActionController::Base
	# protect_from with: :exception

	rescue_from ActiveRecord::RecordNotFound, with: :resource_not_found

	protected

	def resource_not_found	
	end

end
