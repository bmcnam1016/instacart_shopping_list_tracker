class FoodCategory < ActiveRecord::Base
  has_many :food_items , :class_name => "FoodItem", :foreign_key => "food_category_id"
end
