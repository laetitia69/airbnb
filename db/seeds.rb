require 'faker'

10.times do
  #10 fakes city
  city = City.create(city_name: Faker::Pokemon.location)

  #10 fake dogsitter
  dogsitter = Dogsitter.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city_id: rand((City.first.id)..(City.last.id)))

  #10 fakes dog
  dog = Dog.create(
    name: Faker::Dog.name,
    city_id: rand((City.first.id)..(City.last.id)))

  #10 fakes stroll
  stroll = Stroll.create(
      date: Faker::Date.forward(365).to_datetime,
      dogsitter_id: rand((Dogsitter.first.id)..(Dogsitter.last.id)),
      dog_id: rand((Dog.first.id)..(Dog.last.id)))
end
