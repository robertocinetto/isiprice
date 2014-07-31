ActiveAdmin.register Comment do

  index do
    column :id
    column :commenter
    column :body
    column :updated_at
    actions defaults: true


    column :approved

  end
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
  permit_params :commenter, :body, :approved
end
