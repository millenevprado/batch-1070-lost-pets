puts "cleaning db..."
Pet.destroy_all

puts "creating pets..."

20.times do
  Pet.create(
    name: Faker::Movies::HarryPotter.character,
    address: Faker::Address.street_address,
    found_on: Faker::Date.between(from: 20.days.ago, to: Date.today),
    species: Pet::SPECIES.sample
  )
end

puts "#{Pet.count} pets created"
