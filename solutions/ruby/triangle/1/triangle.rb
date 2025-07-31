class Triangle
  def initialize(sides)
    @sides = sides
    @sides_tally = sides.tally.values.max
  end

  def equilateral?
    triangle? && @sides_tally == 3
  end

  def isosceles?
    triangle? && @sides_tally >= 2
  end

  def scalene?
    triangle? && @sides_tally == 1
  end

  def triangle?
    @sides.all?(&:positive?) &&
      @sides.permutation(3).all? { |(a, b, c)| a <= b + c }
  end
end