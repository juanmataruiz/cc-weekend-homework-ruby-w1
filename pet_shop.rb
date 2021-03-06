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

def increase_pets_sold(pet, add_sell)
  return pet[:admin][:pets_sold] += add_sell
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
      return pets
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

def add_pet_to_stock(pets, new_pet)
    pets[:pets].push(new_pet)
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def customer_cash(customer)
   return customer[:cash]
end

def remove_customer_cash(person, cash)
  return person[:cash] -= cash
end

def customer_pet_count(customers)
  total = 0
  for count in customers[:pets]
    total += count
  end
   return total
end

def add_pet_to_customer(person, pet)
  person[:pets].push(pet)
end

def customer_pet_count(customers)
  return customers[:pets].count
end

def customer_can_afford_pet(customer, pet)
  return customer[:cash] > pet[:price]
end

def sell_pet_to_customer(petshop, pets, customer)
  if pets != nil && customer_can_afford_pet(customer, pets)
   add_pet_to_customer(customer, pets)
   customer_cash(customer)
   increase_pets_sold(petshop, 1)
   total = pets[:price]
   remove_customer_cash(customer, total)
   add_or_remove_cash(petshop, total)
  end
end
