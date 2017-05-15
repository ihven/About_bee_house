class Film < ApplicationRecord
    
	mount_uploader :video, VideoUploader
	
	validates :title, presence: true,
                     length: {minimum: 3}
	
	
    			 
				 
end