require './money.rb'
require_relative 'test'
require_relative "test"
module Humen #< Money

  MONEY = [10, 100, 500, 1000].freeze

  # def initialize(money)
  #   @slot_money = 0
  #   slot_money(money)
  # end

  def juice_buy(drink)
    @selected_drink = selected_drink(drink)
    if abailable(drink) == "購入可能"
      @selected_drink[:count] -= 1
      @slot_money -= @selected_drink[:price]
    else
      abailable(drink)
    end
  end

  def slot_money(money)
    # binding.irb
    if MONEY.include?(money)
      @slot_money += money
      puts "#{@slot_money}円投入しました"
    else
      puts "指定のお金を入れて下さい"
    end
    # return false unless MONEY.include?(money)
    # juice_manage
  end

  private
  def juice_manage
    puts "---------abailable_List----------"
    if @cora[:count] > 0 && @cora[:price] < @slot_money
      puts "#{@cora[:drink]}は#{@cora[:price]}円で購入可能だよ残り#{@cora[:count]}本だよ"
    else
      puts "買えるものは何も無いよ"
    end
    puts "---------------------------------"
  end
end