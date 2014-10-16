class ProfessionalsController < InheritedResources::Base
	# before_action :authenticate_admin_user!

	def index
		# if params[:commit].present?
		# 	@professionals = Professional.all
		# 	params.clear
		if params[:search].present?
			@professionals = Professional.near(params[:search], params[:distance] , { :units => :km}).search(params[:profession])
		else
			@professionals = Professional.all
			@professions = Professional.profession
		end


	end
end
