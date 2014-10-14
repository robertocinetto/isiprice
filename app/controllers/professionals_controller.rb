class ProfessionalsController < InheritedResources::Base
	# before_action :authenticate_admin_user!
	def index
		if params[:commit].present?
			@professionals = Professional.all
			params.clear
		elsif params[:search].present?
			@professionals = Professional.near(params[:search], params[:distance] )
		else
			@professionals = Professional.all
		end
	end
end
