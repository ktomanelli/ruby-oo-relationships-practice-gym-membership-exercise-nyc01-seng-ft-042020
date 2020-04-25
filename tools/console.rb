# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new('kyle',100)
lifter2 = Lifter.new('kyle',50)
lifter3 = Lifter.new('kyle',75)
lifter4 = Lifter.new('kyle',100)
gym1 = Gym.new('NYSC')
gym2 = Gym.new('Planet Fitness')
membership1 = Membership.new(54,gym1,lifter1)
membership2 = Membership.new(50,gym1,lifter2)
membership3 = Membership.new(50,gym1,lifter3)
membership4 = Membership.new(50,gym1,lifter4)
membership5 = Membership.new(50,gym2,lifter1)

#binding.pry


puts gym1.lift_total


puts "Gains!"
