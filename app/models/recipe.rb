class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  validates :name, presence: true

  def all_ingredient_ids
    self.ingredients.collect{|i| i.id}
  end

  def self.matching_recipes(ingredient_id_array)
    self.all.select do |recipe|
      recipe.all_ingredient_ids.include?(ingredient_id_array.flat)
    end
  end

end
