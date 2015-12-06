class User < ActiveRecord::Base
	mount_uploader :avatar_image, AvatarUploader
end
