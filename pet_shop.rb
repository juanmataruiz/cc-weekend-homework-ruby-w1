def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(cash)
  return cash[:admin][:total_cash]
end

def add_or_remove_cash(cash, add_cash)
  return cash[:admin][:total_cash] += add_cash
end
