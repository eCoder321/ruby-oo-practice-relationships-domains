require 'pry'
require './clients.rb'
require './locations.rb'
require './trainer_location.rb'
require './trainers.rb'


saheed = Trainer.new("Saheed")
umroom = Trainer.new("Umroom")
roiley = Trainer.new("Roiley")

washington = Location.new("Washington, D.C.")
lutherville = Location.new("Lutherville-Timonium")
princeville = Location.new("Prince Villa")

tunde = Client.new("Tunde", 27)
felix = Client.new("Felix", 35)
ashley = Client.new("Ashley", 21)

# saheed.choose_location(lutherville)
# saheed.choose_location(washington)
# umroom.choose_location(princeville)
# saheed.choose_location(princeville)

# washington.receive_trainer(umroom)

# tunde.assign_trainer(saheed)
# felix.assign_trainer(umroom)
# ashley.assign_trainer(umroom)

# binding.pry