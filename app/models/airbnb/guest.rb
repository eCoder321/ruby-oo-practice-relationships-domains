class Guest
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name 
        @@all.push(self)
    end

    def add_trip(listing)
        Trip.new(listing, self)
    end

    def listings
        Trip.all.collect{
            |trip_instance|
            trip_instance.listing if trip_instance.guest == self
    }.compact
        #binding.pry
    end

    def trips 
        Trip.all.select{
            |trip_instance|
            trip_instance.guest == self
        }
    end

    def trip_count
        self.trips.count 
    end

    def self.all
        @@all 
    end

    def self.pro_traveller
        Guest.all.select {
            |guest_instance|
            guest_instance.trip_count > 1
        }
    end

    def self.find_all_by_name(name)
        Guest.all.select{
            |guest_instance|
            guest_instance.name == name
        }
    end

end

