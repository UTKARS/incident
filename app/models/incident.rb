class Incident < ActiveRecord::Base
	has_one :incident_detail
	has_one :user
	validates :description, presence: true
	mount_uploader :image, ImageUploader
    accepts_nested_attributes_for :incident_detail, :user, :reject_if => :all_blank
end
