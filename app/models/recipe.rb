class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  validates :name, presence: true

  def all_ingredient_ids
    self.ingredients.collect{|i| i.id}
  end

  def method_name
    
  end

end
