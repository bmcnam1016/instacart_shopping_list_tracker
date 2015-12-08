class FoodItem < ActiveRecord::Base
  belongs_to :food_category
  belongs_to :user
end
