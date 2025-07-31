module Grains
  SQUARES_IN_CHESSBOARD = 64

  def self.valid_position?(position)
    position.positive? && position <= SQUARES_IN_CHESSBOARD
  end

  def self.square(position)
    raise ArgumentError, "Invalid position. The index must be between 1 and #{SQUARES_IN_CHESSBOARD}." unless valid_position?(position)

    1 << (position - 1)
  end

  def self.total
    (1..SQUARES_IN_CHESSBOARD).reduce(0) { |sum, position| sum + square(position) }
  end
end
