# frozen_string_literal: true

2.times do
  character = Character.create(
    name: 'bob',
    race_id: Faker::Number.within(range: 1..9),
    city_id: Faker::Number.within(range: 1..95),
    character_class_id: Faker::Number.within(range: 1..10),
    system_id: Faker::Number.within(range: 1..4)
  )
end
puts "generated #{Character.count} characters"
