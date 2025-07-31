class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons)
    wagons
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    #each_wagons_id, missing_wagons = [2, 5, 1, 7, 4, 12, 6, 3, 13], [3, 17, 6, 15]
    #[1, 3, 17, 6, 15, 7, 4, 12, 6, 3, 13, 2, 5]
    a,b, *modified_wagon = each_wagons_id
    modified_wagon.push(a,b)
    modified_wagon.insert(1, *missing_wagons)
    modified_wagon
  end

  def self.add_missing_stops(from_to, **stops)
    from_to.merge(stops: stops.values)
  end

  def self.extend_route_information(route, more_route_information)
    route.merge(**more_route_information)
  end
end
