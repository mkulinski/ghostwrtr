class Genre < ActiveRecord::Base
    has_many :lyrics
    validates :name, uniqueness: true
    
    # before_save :set_slug
    
    
    # def set_slug
    #     self.slug = name.parameterize
    # end
    
    def to_param
        "#{id}-#{name.parameterize}"
    end
end
