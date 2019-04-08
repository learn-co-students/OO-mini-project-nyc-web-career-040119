class User
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select { |card| card.user == self }
  end

  def add_recipe_card(recipe, date, rating)

  end

  def declare_allergy(ingredient) #, name=nil)
    # if Allergy.all.include?(ingredient)
      Allergy.new(self, ingredient)
    # else
    #   ingredient = Ingredient.new(name)
    #   Allergy.new(self, ingredient)
    # end
  end

  def allergens

  end

  def top_three_recipes

  end

  def most_recent_recipe

  end

  ##BONUS##
  def safe_recipes

  end

end
