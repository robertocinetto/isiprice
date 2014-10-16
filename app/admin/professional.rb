ActiveAdmin.register Professional do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  permit_params :name,:last_name,:email,:profile_img,:profession,:latitude,:longitude,:service_type,:address,:cap,:city,:county,:country,:cell

  form do |f|
    f.inputs do
      f.input :name
      f.input :last_name
      f.input :email
      f.input :profile_img
      f.input :profession
      f.input :latitude
      f.input :longitude
      f.input :service_type, :as => :select, :collection => Professional.service_types
      f.input :address
      f.input :cap
      f.input :city
      f.input :county
      f.input :country
      f.input :cell
    end
    f.actions
  end
end
