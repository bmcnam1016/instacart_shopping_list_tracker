class ShoppingController < ApplicationController

def index
    @food_items = FoodItem.all
end

def add

  @food_items = FoodItem.all

  @food_items.each do |food_item|
  if food_item.current_amount <= food_item.reorder_amount
    food_item.current_amount = food_item.current_amount + food_item.amount_per_order
    food_item.save
  end
end

redirect_to "/food_items", :notice => "Current Food Item Amounts Updated Successfully."
end

end
