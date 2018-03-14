class Money

  attr_accessor :value

  def initialize(value)
    self.value = value
  end

  def minus(minus_value)
    value - minus_value
    self.class.new(value - minus_value)
  end
end

puts "金額を入力してください"
value = gets.chomp.to_i

base_price = Money.new(value)

puts "値引き金額を入力してください"

discounted = base_price.minus(gets.chomp.to_i)

puts "値引き後の金額は#{discounted}です"

puts discounted.value
