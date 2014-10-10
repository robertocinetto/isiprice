namespace :isiprice do
  desc "TODO"
  task regen_img: :environment do
  	Professional.all.each do |model|
	  model.profile_img.recreate_versions!
	end
  end

end
