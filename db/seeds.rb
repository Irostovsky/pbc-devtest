# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

joo = PanelProvider.create code: :joo
john = PanelProvider.create code: :john
max = PanelProvider.create code: :max
ua = joo.create_country code: :ua
usa = john.create_country code: :usa
uk = max.create_country code: :uk

location_groups = []
location_groups << joo.location_groups.create(name: :lg1, country: joo.country)
location_groups << john.location_groups.create(name: :lg2, country: john.country)
location_groups << max.location_groups.create(name: :lg3, country: max.country)
location_groups << max.location_groups.create(name: :lg4, country: joo.country)

rand = Random.new
20.times.each do |i|
  l = Location.create name: Faker::Address.street_address + " #{i}"
  rand.rand(0..4).times.each do |j|
    location_groups[j].locations << l
  end
end


