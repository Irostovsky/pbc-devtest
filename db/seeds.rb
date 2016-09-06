# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

joo = PanelProvider.create code: :joo
john = PanelProvider.create code: :john
max = PanelProvider.create code: :max
ua = joo.create_country code: :ua
usa = john.create_country code: :usa
uk = max.create_country code: :uk

lg1 = joo.location_groups.create name: :lg1, country: joo.country
lg2 = john.location_groups.create name: :lg2, country: john.country
lg3 = max.location_groups.create name: :lg3, country: max.country
lg4 = max.location_groups.create name: :lg4, country: joo.country