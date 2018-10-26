class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.find_or_create_by(params[:name])
    redirect_to @ingredient
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
  end

  def index
  end

  def ingredients_params
    params.require(:ingredient).permit(:name)
  end
end
