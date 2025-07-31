class AssemblyLine
  CARS_PRODUCING_CAPACITY_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    multiplier = if (1..4).include? @speed
                   1.0
                 elsif (5..8).include? @speed
                   0.9
                 elsif @speed == 9
                   0.8
                 else
                   0.77
                 end
    CARS_PRODUCING_CAPACITY_PER_HOUR * @speed * multiplier
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
