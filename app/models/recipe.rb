class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  validates :name, presence: true

  def all_ingredient_ids
    self.ingredients.collect{|i| i.id}
  end

  def self.matching_recipes(recipe)
    ingredient_ids = recipe.ingredients.collect{|i| i.id}
    self.all.select do |recipe|
      (ingredient_id_array - recipe.all_ingredient_ids).empty?
    end
  end

end
