class PythagoreanTriplet
  def self.triplets_with_sum(sum)
    triplets = []

    # Loop through possible values for side_a
    (1..sum / 3).each do |side_a|
      # Calculate side_b and side_c based on the sum and side_a
      side_b = (sum**2 - 2 * sum * side_a) / (2 * sum - 2 * side_a)
      side_c = sum - side_a - side_b

      # Check if it forms a Pythagorean triplet (side_a^2 + side_b^2 = side_c^2)
      if side_a**2 + side_b**2 == side_c**2
        # If it's a valid triplet, add it to the list of triplets
        triplets << [side_a, side_b, side_c].sort
      end
    end

    # Return the unique triplets found
    triplets.uniq
  end
end
