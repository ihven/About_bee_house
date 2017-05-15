class Article < ApplicationRecord
   
   has_many :comments, dependent: :destroy 
   
   validates :author, presence: true, length: {minimum: 3}
   validates :text, presence: true, length: {minimum: 3}   
  
end
