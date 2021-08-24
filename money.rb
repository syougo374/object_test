module Money
  # attr_reader :total_amount, :slot_money
  def initialize
    # @total_amount = 0
    # @slot_money = 0
  end

  def current_slot_money
    puts "現在の投入金額は#{@slot_money}円だよ"
  end

  def total_amount
    puts "売り上げ：#{@total_amount}だよ"
  end

  def return_money
    puts "#{@slot_money}円の戻り"
    @slot_money = 0
  end

end