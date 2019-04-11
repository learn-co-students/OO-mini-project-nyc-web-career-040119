class Ingredient

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.allergies
    Allergy.all.map { |allergen| allergen.ingredient }
  end

  def self.most_common_allergen
    self.allergies.max_by { |ingredient| allergies.count(ingredient) }
  end

end
