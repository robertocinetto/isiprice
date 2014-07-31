class ProfessionalsController < InheritedResources::Base
  before_action :authenticate_admin_user!
end
