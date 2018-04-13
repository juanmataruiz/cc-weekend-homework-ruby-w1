def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(cash)
  return cash[:admin][:total_cash]
end

def add_or_remove_cash(cash, total)
  return cash[:admin][:total_cash] += total
end

def pets_sold(sell)
  return sell[:admin][:pets_sold]
end

def increase_pets_sold(actual, add_sell)
  return actual[:admin][:pets_sold] += add_sell
end
