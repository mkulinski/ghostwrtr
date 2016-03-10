class User < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  attr_accessor :login
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
 
  validates :username,
    :presence => true,
    :uniqueness => {
      :case_sensitive => false
     }

         
  has_many :lyrics
  has_many :carts
end
