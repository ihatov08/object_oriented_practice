class Quantity
  MIN = 1
  MAX = 100

  class IllegalArgumentException < StandardError
  end

  attr_accessor :value

  def initialize(value)
    self.value = value

    if value < MIN
      raise IllegalArgumentException, "不正な値です。#{MIN} 未満"
    end

    if value > MAX
      raise IllegalArgumentException, "不正な値です。#{MAX} 以上"
    end
  end

  def can_add?(other)
    added = add_value(other)

    added <= MAX
  end

  def add(other)
    if !can_add?(other)
      raise IllegalArgumentException, "不正：合計が１００以上"

      added = add_value(other)
    end
  end

  private

  def add_value(other)
    value + other
  end
end

quantity = Quantity.new(50)

quantity.can_add?(1000)

quantity.add(100)
