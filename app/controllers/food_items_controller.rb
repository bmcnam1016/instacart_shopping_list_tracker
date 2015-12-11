class FoodItemsController < ApplicationController

  before_action :current_user_must_be_owner, :only => [:edit, :update, :destroy]

  def current_user_must_be_owner
    @food_item = FoodItem.find(params[:id])
    if @food_item.user != current_user
      redirect_to root_url, :alert => "Not authorized for that."
    end
  end

  def index
    @food_items = current_user.food_items
  end

  def show
    @food_item = FoodItem.find(params[:id])
  end

  def new
    @food_item = FoodItem.new
  end

  def create
    @food_item = FoodItem.new
    @food_item.current_amount = params[:current_amount]
    @food_item.image = params[:image]
    @food_item.reorder_amount = params[:reorder_amount]
    @food_item.food_category_id = params[:food_category_id]
    @food_item.user_id = params[:user_id]
    @food_item.amount_per_order = params[:amount_per_order]
    @food_item.name = params[:name]

    if @food_item.save
      redirect_to "/food_items", :notice => "Food item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @food_item = FoodItem.find(params[:id])
  end

  def update
    @food_item = FoodItem.find(params[:id])

    @food_item.current_amount = params[:current_amount]
    @food_item.image = params[:image]
    @food_item.reorder_amount = params[:reorder_amount]
    @food_item.food_category_id = params[:food_category_id]
    @food_item.user_id = params[:user_id]
    @food_item.amount_per_order = params[:amount_per_order]
    @food_item.name = params[:name]

    if @food_item.save
      redirect_to "/food_items", :notice => "Food item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @food_item = FoodItem.find(params[:id])

    @food_item.destroy

    redirect_to "/food_items", :notice => "Food item deleted."
  end

  def subtract
    @food_item = FoodItem.find(params[:id])
    @food_item.current_amount = @food_item.current_amount - 1
    @food_item.save

    redirect_to "/food_items"
  end

end
