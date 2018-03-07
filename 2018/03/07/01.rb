quantity = 10

unit_price = 300

tax_rate = 1.08

base_price = quantity * unit_price

shipping_cost = 0

if base_price < 3000
  shipping_cost = 500
end

item_price = (base_price + shipping_cost) * tax_rate
