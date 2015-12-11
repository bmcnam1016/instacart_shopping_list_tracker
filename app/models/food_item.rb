class FoodItem < ActiveRecord::Base
  belongs_to :food_category
  belongs_to :user
  validates :user, :presence => true
  validates :image, :presence => true
  validates :current_amount, :presence => true, numericality: { only_integer: true }
  validates :name, :presence => true
  validates :reorder_amount, :presence => true, numericality: { only_integer: true }
  validates :amount_per_order, :presence => true, numericality: { only_integer: true }
end
