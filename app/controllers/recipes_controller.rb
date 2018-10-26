class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
  end

  def create
    @recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      redirect_to new_recipe
    end

  end

  def edit
  end

  def index
  end

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients_ids => [])
  end
end
