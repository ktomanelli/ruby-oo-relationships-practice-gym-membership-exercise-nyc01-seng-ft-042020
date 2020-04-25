class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name

    Gym.all<<self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |i|
      i.gym==self
    end
    
  end

  def lifters
    memberships.map do |i|
      i.lifter
    end
  end 

  def lifter_names
    lifters.map do |i|
      i.name
    end
  end

  def lift_total
    lifters.sum do |i|
      i.lift_total
    end
  end
end
