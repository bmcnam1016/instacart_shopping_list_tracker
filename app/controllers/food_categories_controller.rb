class FoodCategoriesController < ApplicationController
  def index
    @food_categories = FoodCategory.all
  end

  def show
    @food_category = FoodCategory.find(params[:id])
  end

  def new
    @food_category = FoodCategory.new
  end

  def create
    @food_category = FoodCategory.new
    @food_category.name = params[:name]

    if @food_category.save
      redirect_to "/food_categories", :notice => "Food category created successfully."
    else
      render 'new'
    end
  end

  def edit
    @food_category = FoodCategory.find(params[:id])
  end

  def update
    @food_category = FoodCategory.find(params[:id])

    @food_category.name = params[:name]

    if @food_category.save
      redirect_to "/food_categories", :notice => "Food category updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @food_category = FoodCategory.find(params[:id])

    @food_category.destroy

    redirect_to "/food_categories", :notice => "Food category deleted."
  end
end
