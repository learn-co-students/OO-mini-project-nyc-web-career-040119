class RecipeIngredient
  @@all = []

  attr_accessor :recipe, :ingredient

  def initialize(recipe, ingredient)
    @ingredient = ingredient
    @recipe = recipe
    self.class.all << self
  end

  def self.all
    @@all
  end

  def ingredient

  end

  def recipe

  end

end
