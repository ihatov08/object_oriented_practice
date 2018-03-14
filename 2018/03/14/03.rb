class Money
  attr_accessor :unit_price, :quantity

  def initialize(unit_price, quantity)
    self.unit_price = unit_price
    self.quantity = quantity
  end

  def amount
    if quantity.is_discountable
      return discount(uniq_price, quantity)
    end

    unit_price.multiply(quantity.value)
  end

  def multiply(quantity)
    price * quantity
  end

  def discount(unit_price, quantity)
    #....
  end
end

class Quantity
  attr_accessor :quantity

  def initialize(quantity)
    self.quantity = quantity
  end

  def is_discountable?
    if quantity > 10
      true
    else
      false
    end
  end
end
