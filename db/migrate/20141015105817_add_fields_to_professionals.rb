class AddFieldsToProfessionals < ActiveRecord::Migration
  def change
    add_column :professionals, :service_type, :string
    add_column :professionals, :hour_cost, :integer
    add_column :professionals, :cap, :integer
    add_column :professionals, :city, :string
    add_column :professionals, :county, :string
    add_column :professionals, :country, :string
    add_column :professionals, :cell, :integer
    add_column :professionals, :logo, :string
  end
end
