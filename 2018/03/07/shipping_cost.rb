class ShippingCost
  attr_accessor :base_price

  MINIMUM_FOR_FREE = 3000
  COST = 500

  def initialize(base_price)
    self.base_price = base_price
  end

  def amount
    if base_price < MINIMUM_FOR_FREE
      cost = COST
    else
      cost = 0
    end

    puts "送料は#{cost}です"
  end
end

puts "金額を入力してください"
base_price = gets.chomp.to_i
cost = ShippingCost.new(base_price)

puts cost.amount
