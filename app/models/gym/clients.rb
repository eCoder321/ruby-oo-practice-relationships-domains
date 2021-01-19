class Client
    @@all = []

    attr_reader :name, :age
    def initialize(name, age)
        @name = name
        @age = age
        self.save
    end
    
    def save
        @@all.push(self)
    end

    def assign_trainer(trainer)
        #binding.pry
        trainer.clients.push(self)
    end

    def my_trainer
        Trainer.all.find{
            |trainer_inst|
            trainer_inst.clients.include?(self)
        }
    end

    def available_locations
        TrainerLocation.all.select{
            |trainer_location_inst|
            trainer_location_inst.trainer == self.my_trainer
    }.collect {
        |trainer_location_inst|
        trainer_location_inst.location
    }
    end

    def self.all
        @@all
    end

end