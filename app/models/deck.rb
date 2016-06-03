class Deck < ActiveRecord::Base
	mount_uploaders :images, ImageUploader
end
