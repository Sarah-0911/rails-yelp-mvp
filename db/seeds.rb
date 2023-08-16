Restaurant.destroy_all

puts "Creating restaurants..."
5.times do
  resto = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample
  )
  10.times do
    Review.create!(
      rating: Faker::Number.between(from: 0, to: 5),
      content: Faker::Restaurant.review,
      restaurant: resto
    )
  end
end
puts "Finished!"
