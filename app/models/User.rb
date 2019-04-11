class User < Recipe
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def my_recipes
    RecipeCard.all.select { |card| card.user == self }
  end

  def my_allergens
    Allergy.all.select { |allergy| allergy.user == self }
  end

  # def initialize(user, recipe, date, rating)
  def add_recipe_card(recipe, rating)
    RecipeCard.new(self, recipe, Time.now, rating)
  end

  def declare_allergy(ingredient)
      Allergy.new(self, ingredient)
  end

  def allergens
    my_allergens.map { |allergen| allergen.ingredient }
  end

  def top_three_recipes
    recipes.max_by(3) { |recipe| recipe.rating}
  end

  def most_recent_recipe
    RecipeCard.all.max_by { |card| card.date }
  end

  ##BONUS##

  def safe_recipes
    

  end

end
