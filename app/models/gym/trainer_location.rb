class TrainerLocation
    @@all = []

    attr_accessor :trainer, :location 
    def initialize(trainer, location)
        @trainer = trainer
        @location = location
        save
    end

    def save
        @@all.push(self)
    end

    def self.all 
        @@all
    end

end
