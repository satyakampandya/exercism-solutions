module Grains
  BOARD_SIZE = 64

  def self.valid_position?(position)
    (1..BOARD_SIZE).include?(position)
  end

  def self.square(position)
    raise ArgumentError unless valid_position?(position)

    1 << (position - 1)
  end

  def self.total
    ((1..BOARD_SIZE).map { |position| square(position) }).sum
  end
end
