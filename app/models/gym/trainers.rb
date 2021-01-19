class Trainer
    @@all = []
    attr_accessor :clients
    attr_reader :name
    def initialize(name)
        @name = name
        @clients = []
        save 
    end

    def save 
        @@all.push(self)
    end

    def choose_location(location)
        TrainerLocation.new(self, location)
    end

    def self.most_clients
        Trainer.all.max_by {
            |trainer_inst|
            trainer_inst.clients.count
        }
    end

    def self.least_clients
        Trainer.all.min_by {
            |trainer_inst|
            trainer_inst.clients.count
        }
    end

    def self.all 
        @@all
    end

end
