class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
  end

  def create
    raise params.inspect
  end

  def edit
  end

  def index
  end
end
