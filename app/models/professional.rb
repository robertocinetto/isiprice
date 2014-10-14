class Professional < ActiveRecord::Base
	has_many :comments

	mount_uploader :profile_img, ImageUploader

	validates :name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, uniqueness: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

end
