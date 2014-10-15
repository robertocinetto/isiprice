class Professional < ActiveRecord::Base
	has_many :comments

	mount_uploader :profile_img, ImageUploader

	validates :name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, uniqueness: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :service_type, presence: true
	validates :cap, presence: true
	validates :city, presence: true
	validates :county, presence: true
	validates :country, presence: true
	validates :cell, presence: true, uniqueness: true

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?


	def self.service_types
		SERVICE_TYPES
	end

	def self.service_types_for_select
		service_types.enum_for(:each_with_index).to_a
	end

	def service_type_name
		Professional.service_types[service_type] rescue "non existent"
	end


	SERVICE_TYPES = [
		"manodopera",
		"servizio",
		"consulenza"
	]

end
