Restaurant.destroy_all

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: Restaurant::CATEGORIES.sample,
  )
end

10.times do
  Review.create(
    rating: Review::RATINGS.sample,
    content: Faker::Restaurant.review,
    restaurant_id: Restaurant.all.sample.id,
  )
end
