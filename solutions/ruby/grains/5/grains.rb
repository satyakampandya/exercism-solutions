module Grains
  BOARD_SIZE = 64

  def self.valid_position?(position)
    position.positive? && position <= BOARD_SIZE
  end

  def self.square(position)
    raise ArgumentError, "index must be between 1 and #{BOARD_SIZE}" unless valid_position?(position)

    1 << (position - 1)
  end

  def self.total
    ((1..BOARD_SIZE).sum { |position| square(position) })
  end
end
