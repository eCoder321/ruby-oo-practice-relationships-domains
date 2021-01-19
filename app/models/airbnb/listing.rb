class Listing
    @@all = []

    attr_accessor :city

     def initialize(city)
        @city = city
        @@all.push(self)
     end

     def guests 
        Trip.all.collect{
            |trip_instance|
            trip_instance.guest if trip_instance.listing == self
        }.compact
    end

    def trips
        Trip.all.select{
            |trip_instance|
            trip_instance.listing == self
        }
    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(name)
        Listing.all.select {
            |listing_instance|
            listing_instance.city == name
        }
    end

    def self.most_popular 
        previous_listing = 0
        Listing.all.select{
            |listing_instance|
            previous_listing = listing_instance.trip_count if listing_instance.trip_count > previous_listing
        }[-1]
    end

     def self.all
        @@all
     end

end