class User < ActiveRecord::Base
	mount_uploader :avatar_image, AvatarUploader
	
	validates :name, presence: true
	validates :name, length: { maximum: 30 }

	validates :age , presence: true
	validates :age, :numericality => { :greater_than => 0 }

	validates :address, presence:true
	validates :address, length: { maximum: 250 }
end
