class RecipeCard
  @@all = []

  attr_reader :user, :recipe

  def initialize(user, recipe)
    @user = user
    @recipe = recipe
    self.class.all << self
  end

  def self.all
    @@all
  end
end
