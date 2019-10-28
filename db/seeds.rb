# frozen_string_literal: true

200.times do
  EsCharacter.create(
    name: Faker::Games::ElderScrolls.unique.name,
    race_id: Faker::Number.within(range: 1..9),
    city_id: Faker::Number.within(range: 1..95),
    character_class_id: Faker::Number.within(range: 1..10)
  )
end
puts "generated #{EsCharacter.count} characters"
