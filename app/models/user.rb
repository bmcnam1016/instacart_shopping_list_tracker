class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :food_items , :class_name => "FoodItem", :foreign_key => "user_id"
  validates :username, :presence => true, :uniqueness => true

end
