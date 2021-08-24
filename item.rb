require_relative 'drink'
# require_relative 'humen'
# require_relative 'money'
require_relative 'test'
5.times{Drink.new('コーラ',120)}
5.times{Drink.new('みず',100)}
5.times{Drink.new('レッドブル',220)}

puts "お金を投入して下さい"
# binding.irb
vendingmachine = VendingMachine.new
# humen = Humen.new(gets.to_i)
puts "商品番号を選択して下さい"
