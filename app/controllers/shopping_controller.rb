class ShoppingController < ApplicationController

def index
    @food_items = FoodItem.all
end

def add



redirect_to "/food_items", :notice => "Current Food Item Amounts Updated Successfully."
end

end
