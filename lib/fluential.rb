def get_my_influencers(brand)
  #debugger
  return get_car_influencers if get_brand_type(brand) == :car
  get_food_influencers if get_brand_type(brand) == :food
end

def get_car_influencers
  ["epicmealtime", "marcus", "carmakers"]
end

def get_food_influencers
  ["tansaku", "streetmart", "hellobaby"]
end

def get_brand_type brand
  return :food if ["Hovis", "Birds Eye", "Beyond Meat", "Heinz"].include? brand
  return :car if ["Mercedes", "Tesla", "Ford", "GM"].include? brand
end