class CartItemsController < ApplicationController
    def create
        @cart = current_cart
        @cart_item = @cart.cart_items.new(cart_item_params)
        @cart_item.save
        
        redirect_to cart_url(@cart)
    end
    
    def update
       @cart = current_cart
       @cart_item = @cart.cart_items.find(params[:id])
       @cart_item.update_attributes(cart_item_params)
       
        redirect_to cart_url(@cart)
    end
    
    def destroy
        @cart = current_cart
        @cart_item = @cart.cart_items.find(params[:id])
        @cart_item.destroy
        
        redirect_to cart_url(@cart)
    end
    
    private
        def cart_item_params
           params.require(:cart_item).permit(:quantity, :lyric_id) 
        end
end
