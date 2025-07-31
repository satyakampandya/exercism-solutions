=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

class Clock
  attr_accessor :total_minutes

  def initialize(hour: 0, minute: 0)
    @total_minutes = (hour * 60 + minute).modulo(1440)
  end

  def to_s
    format('%02d:%02d', (total_minutes / 60) % 24, total_minutes % 60)
  end

  def +(other)
    Clock.new(minute: total_minutes + other.total_minutes)
  end

  def -(other)
    Clock.new(minute: (total_minutes - other.total_minutes))
  end

  def ==(other)
    total_minutes == other.total_minutes
  end
end

