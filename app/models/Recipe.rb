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
    # RecipeCard.all.map do |card|
    #   card.recipe
    # end
    # popular = {}
    # RecipeCard.all.each do |card|
    #   popular[card.recipe] = card.count
    # end
    # binding.pry

  end

  def users
    recipe_cards = RecipeCard.all.select { |card| card.recipe == self }
    recipe_cards.map do |card|
      card.user
    end
  end

  def ingredients

  end

  def allergens

  end

  def add_ingredients

  end

end
