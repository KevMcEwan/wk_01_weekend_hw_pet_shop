def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(total_cash, add_amount)
  total_cash[:admin][:total_cash] += add_amount
end


def pets_sold(number_of_pets_sold)
  return number_of_pets_sold[:admin][:pets_sold]
end
