class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredient_path(@ingredient)
    else
      redirect_to new_ingredient
    end

  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
  end

  def index
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
