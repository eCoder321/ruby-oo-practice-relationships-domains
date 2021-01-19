require 'pry'
require './guest.rb'
require './listing.rb'
require './trip.rb'

sunners = Guest.new("Sunners")
capitol = Listing.new("DC")

sunners.add_trip(capitol)

booker = Guest.new("Booker")
seattle = Listing.new("Seattle")

booker.add_trip(seattle)
sunners.add_trip(seattle)
booker.add_trip(seattle)
sunners.add_trip(capitol)
# p sunners.listings
# puts sunners.trips
# puts sunners.trip_count
# p Guest.all
# p Guest.pro_traveller
# p Guest.find_all_by_name("Sunners")

#p capitol.guests
p capitol.guests
p seattle.trips
p seattle.trip_count
p Listing.all
p Listing.find_all_by_city("Seattle")
#p Listing.most_popular