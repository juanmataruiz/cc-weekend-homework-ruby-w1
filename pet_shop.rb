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

def stock_count(total)
  return total[:pets].count
end

def pets_by_breed(hash, breed)
  total_breed = []
  for pets in hash[:pets]
    total_breed.push(breed) if pets[:breed] == breed
  end
  return total_breed
end

def find_pet_by_name(hash, name)
  for pets in hash[:pets]
    if (pets[:name] == name)
      return name
  end
end
  return nil
end

def remove_pet_by_name(pets, name)
  for pet in pets[:pets]
    if name == pet[:name]
      pet[:name] = []
    end
  end
end

# def add_pet_to_stock(pets, new_pet)
#   for pet in pets[:new_pet].each
#     pet[:pet_shop].push(new_pet)
#   end
#   return new_pet
# end

def customer_cash(cash)
  return cash [:admin][:total_cash]
end
