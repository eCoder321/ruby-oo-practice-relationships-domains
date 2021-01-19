class Location
    @@all = []

    attr_accessor :name
    def initialize(name)
        @name = name
        save
    end

    def save
        @@all.push(self)
    end

    def receive_trainer(trainer)
        TrainerLocation.new(trainer, self)
    end

    def trainers
        TrainerLocation.all.select{
            |trainer_location_inst|
            trainer_location_inst.location == self
        }.collect{
            |trainer_location_inst|
            trainer_location_inst.trainer
        }
    end

    def clients 
        self.trainers.collect{
            |trainer_inst|
            # binding.pry
            trainer_inst.clients
        }.flatten
    end

    def self.least_clients
        Location.all.min_by{
            |location_inst|
            location_inst.clients.count
        }
    end

    def self.most_clients
        Location.all.max_by{
            |location_inst|
            location_inst.clients.count
        }
    end

    def self.all
        @@all
    end
end