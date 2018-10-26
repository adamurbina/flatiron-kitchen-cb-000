class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
  end

  def edit
  end

  def index
  end
end
