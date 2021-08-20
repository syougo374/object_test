require './humen.rb'
class Drink < Humen
  attr_reader :drink, :price, :count
  def initialize(drink, price, count)
    @drink = drink
    @price = price
    @count = count
  end

  def self.cora
    Drink.new('コーラ',120,5)
  end
end