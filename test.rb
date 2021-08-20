# MONEY1 = [10, 50, 100, 500, 1000].freeze
# @total_amount = 0
# @cora = {name: 'コーラ', price: 120, count: 5}
# @slot_money = 0
# while true
#   menu = %i[1:お金を投入 2:返金 3:商品を選ぶ 4:逃げる 5:投入金額確認  6:在庫情報 7:売り上げ高]
#   menu.each do |i|
#     puts "#{i}"
#   end
#   num = gets.to_i
#   g = (1..menu.length).to_a
#   if g.include?(num)
#   case num
#   when 1 then
#     puts 'いくら入れますか？'
#     price = gets.to_i
#     if MONEY1.include?(price)
#       @slot_money += price
#     else
#       puts 'お金を入れて下さい'
#     end
#     when 2 then
#       puts '返金'
#       puts "hei#{@slot_money}の返金だよ！"
#       @slot_money = 0
#     when 3 then
#       puts 'コーラ'
#       puts '買わない'
#       purchase_decision = gets
#       if purchase_decision == "コーラ\n" && @cora[:price] < @slot_money
#         puts 'ほれコーラだよ！'
#         @slot_money -= @cora[:price]
#         @cora[:count] -= 1
#       elsif purchase_decision == "買わない\n"
#         puts 'お金は貰っとくよ'
#         @slot_money -= @cora[:price]
#       else
#         puts '何とか言いな'
#       end
#     when 4 then
#       puts '逃げる'
#       return
#     when 5 then
#       puts "所持金は#{@slot_money}円です"
#     when 6 then
#       puts @cora
#     when 7 then
#       puts "総売り上げ高：#{@total_amount}"
#     end
#   else
#   puts 'ちゃんとした数字を選んだら？'
#   end
# end

# require './test.rb'
# require './humen.rb'
require './drink.rb'
class VendingMachine < Drink
  def initialize
    @slot_money = 0
    @total_amount = 0
    @cora = { drink: Drink.cora.drink ,price: Drink.cora.price, count: Drink.cora.count }
  end

  def add_drink(drink)
    @selected_drink = selected_drink(drink)
    num = gets.to_i
    if num > 0
      @selected_drink[:count] += num
      "#{num}本追加で#{@selected_drink[:count]}本だよ"
    else
      "整数を入力して下さい"
    end
  end

  while true
    menus = %i{1:お金を入れる 2:商品を選択する 3:お釣りを出す 4:逃げる}
    puts "番号を入力して下さい"
    menus.each do |menu|
      puts "#{menu}"
    end
    num = gets.to_i
    numbers = (1..menus.length)
    if numbers.include?(num)
      case num
        when 1 then
          money = gets.to_i
          # binding.irb
          slot_money(money)
        when 2 then
          # vm = VendingMachine.new
          drink = gets.to_s
          juice_buy(drink)
        when 3 then
          return_money
        when 4 then
          break
      end
    else
      puts "指定の数値を入力して下さい"
    end
  end

  private

  def selected_drink(drink)
    if drink == "コーラ"
      @cora
    else
      puts "そんなものはない"
    end
  end

  def abailable(drink)
    @selected_drink = selected_drink(drink)
    if @selected_drink[:count] == 0
      "#{@selected_drink[:drink]}は在庫切れ"
    elsif @selected_drink[:price] > @slot_money
      "金額不足"
    else
      "購入可能"
    end
  end
end
vm = VendingMachine.new