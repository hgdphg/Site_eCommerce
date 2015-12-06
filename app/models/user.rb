class User < ActiveRecord::Base
	mount_uploader :avatar_image, AvatarUploader
	
	validates :name, presence: true
	validates :email, uniqueness: true
	validates :name, length: { maximum: 30 }

	validates :email, presence: true
	validates :email, uniqueness: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

	validates :password, presence: true

	validates :age, presence: true
	validates :age, :numericality => { :greater_than => 0 }

	validates :address, presence:true
	validates :address, length: { maximum: 250 }
end
