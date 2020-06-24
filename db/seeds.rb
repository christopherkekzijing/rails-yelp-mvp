5.times do
  Restaurant.create(
    name:Faker::Restaurant.name ,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
end
