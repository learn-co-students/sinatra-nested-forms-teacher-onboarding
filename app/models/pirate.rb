class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@all << self
  end
end