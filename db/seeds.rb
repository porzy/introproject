# frozen_string_literal: true

2.times do
  Es_Character.create(
    name: Faker::Games::ElderScrolls.name,
    race_id: Faker::Number.within(range: 1..9),
    city_id: Faker::Number.within(range: 1..95),
    character_class_id: Faker::Number.within(range: 1..10)
  )
end
puts "generated #{Es_Character.count} characters"
