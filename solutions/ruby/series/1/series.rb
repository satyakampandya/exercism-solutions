=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(series)
    @series = series
  end

  def slices(length)
    raise ArgumentError, 'Length is greater than the input string length' if length > @series.length or length <= 0

    result = []
    0.upto(@series.length - length) do |i|
      result << @series[i, length]
    end

    result
  end
end