class Recipe

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    self.all.max_by { |recipe| recipe.users.length }
  end

  ## HELPER METHODS
  def my_cards
    RecipeCard.all.select { |card| card.recipe == self }
  end

  def my_ingredients
    RecipeIngredient.all.select { |ingredient| ingredient.recipe == self }
  end

  def my_allergens
    Allergy.all.select { |allergen|  ingredients.include?(allergen.ingredient) }
  end

  # def uniq_cards
  #   RecipeCard.all.select.uniq { |card| card.recipe.name }
  # end

  def users
    my_cards.map { |card| card.user }
  end

  def ingredients
    my_ingredients.map { |card| card.ingredients }
  end

  def allergens
    my_allergens.map { |allergen| allergen.ingredient }.uniq
  end

  def add_ingredients(ingre_arr)
    ingre_arr.each { |ingredient| RecipeIngredient.new(self,ingredient) }
  end

end
