class Lyric < ActiveRecord::Base
    belongs_to :user
    belongs_to :genre
    mount_uploader :image, ImageUploader
    
    has_many :cart_items
end 
