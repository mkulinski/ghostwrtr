class CartItem < ActiveRecord::Base
    belongs_to :carts
    belongs_to :lyrics
end
