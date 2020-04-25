class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    Lifter.all<<self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |i|
      i.lifter == self
    end
  end

  def gyms
    memberships.map do |i|
      i.gym
    end
  end

  def self.average_lift_total
    all_lift_totals = Membership.all.map do |i|
      i.lifter.lift_total
    end
    (all_lift_totals.sum) / all_lift_totals.length.to_f
  end

  def total_cost
    memberships.sum do |i|
      i.cost
    end
  end

  def sign_up(cost,gym)
    Membership.new(cost,gym,self)
  end
end
