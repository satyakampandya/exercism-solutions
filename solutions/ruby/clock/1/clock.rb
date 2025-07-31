=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

class Clock
  attr_accessor :total_minutes

  def initialize(hour: 0, minute: 0)
    @total_minutes = (hour * 60) + minute
  end

  def to_s(minutes = nil)
    minutes ||= total_minutes
    sprintf("%02d:%02d", (minutes / 60) % 24, minutes % 60)
  end

  def +(other_clock)
    to_s(total_minutes + other_clock.total_minutes)
  end

  def -(other_clock)
    to_s(total_minutes - other_clock.total_minutes)
  end

  def ==(other_clock)
    to_s == other_clock.to_s
  end
end
