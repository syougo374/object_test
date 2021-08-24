# require './humen.rb'
require 'kosi'
class Drink
  attr_reader :drink, :price
  def initialize(drink, price)
    @drink = drink
    @price = price
    @@instances = []
  end

  # def self.cora
  #   Drink.new('コーラ',120,5)
  # end

  def self.all
    @@instances
  end
end