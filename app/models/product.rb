class Product < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	belongs_to :category
	has_many :line_items
	belongs_to :user
end
