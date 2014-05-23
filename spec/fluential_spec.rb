require 'debugger'
require 'fluential'

describe 'fluential' do

  context 'car brands' do
    car_brands = ["Mercedes", "Tesla", "Ford", "GM"]
    car_brand_influencers = ["epicmealtime", "marcus", "carmakers"]
    car_brands.each do |car|
      it "should be able to list relevant influencers for car brands: '#{car}'" do
        expect(get_my_influencers(car)).to eq car_brand_influencers 
      end
    end

    it '#get_car_influencers' do
      expect(get_car_influencers).to eq car_brand_influencers
    end
  end

  context 'car brands' do
    food_brands = ["Hovis", "Birds Eye", "Beyond Meat", "Heinz"]
    food_brand_influencers = ["tansaku", "streetmart", "hellobaby"]
    food_brands.each do |food|  
      it "should be able to list relevant influencers for food brand: '#{food}'" do
        expect(get_my_influencers(food)).to eq food_brand_influencers 
      end
    end

    it '#get_food_influencers' do
      expect(get_food_influencers).to eq food_brand_influencers
    end
  end

  it '#get_brand_type food' do
    expect(get_brand_type("Birds Eye")).to eq :food
  end

  it '#get_brand_type car' do
    expect(get_brand_type("Tesla")).to eq :car
  end

end