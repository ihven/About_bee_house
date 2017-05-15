class Product < ApplicationRecord
    validates :title, presence: true,
                     length: {minimum: 3}
	validates :text, presence: true,
                     length: {minimum: 3}
    
	mount_uploader :image, ImageUploader
    	
	mount_uploader :image1, ImageUploader				 
end
