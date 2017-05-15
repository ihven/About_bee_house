class Gallery < ApplicationRecord
   mount_uploader :image, ImageUploader
   
   validates :title, presence: true, length: {minimum: 3}
   validates :image, presence: true
   
end
