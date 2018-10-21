def pet_shop_name(pet_shop)
  return pet_shop[:name]
end



def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(total_cash, add_amount)
  total_cash[:admin][:total_cash] += add_amount
end


def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pets_sold, add_number)
  pets_sold[:admin][:pets_sold] += add_number
end


def stock_count(number_of_pets_in_stock)
  return number_of_pets_in_stock[:pets].count
end



def pets_by_breed(pet_shop, breed)
  pets = [] #we're creating a new empty array to fill
  for pet in pet_shop[:pets]
    #compare pet[:breed] to breed
    if pet[:breed] == breed
      # add pet to the array
      pets.push(pet)
    end
  end
  return pets
end


def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end


def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
     return pet_shop[:pets].delete(pet)
    end
  end
  return nil
end


def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets].push(new_pet).count
end


def customer_cash(customers)
  return customers[:cash]
end


def remove_customer_cash(total_cash, deduct_amount)
return total_cash[:cash] -= deduct_amount
end


def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, pet)
  return customer[:pets] << pet
end


def customer_can_afford_pet(customer, pet)
  return customer[:cash] > pet[:price]
end


def sell_pet_to_customer(pet_shop, pet, customer)
  return
    add_pet_to_customer(customer, find_pet_by_name(pet_shop, pet))
    # customer_pet_count(customer)
    # pets_sold(pet_shop)
    # increase_pets_sold((pets_sold), 1)
end
