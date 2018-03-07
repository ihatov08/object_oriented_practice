base_price = quantity * unit_price

shipping_cost = shipping_cost(base_price)

item_price = (base_price * shipping_cost) * tax_rate

# メソッドの抽出
def shipping_cost(base_price)
  if (base_price < 3000)
    500
  else
    0
  end
end
