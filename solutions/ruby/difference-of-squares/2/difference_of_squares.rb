class Squares
  attr_reader :series

  def initialize(limit)
    @series = 1.upto(limit)
  end

  def square_of_sum
    series.sum**2
  end

  def sum_of_squares
    series.map { |n| n**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
