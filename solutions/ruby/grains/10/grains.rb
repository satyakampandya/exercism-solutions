module Grains
  SQUARES_IN_CHESSBOARD = 64
  INVALID_POSITION_MESSAGE = "Invalid position. The index must be between 1 and #{SQUARES_IN_CHESSBOARD}."

  def self.validate_position(position)
    raise ArgumentError, INVALID_POSITION_MESSAGE unless valid_position?(position)
  end

  def self.calculate_grains(position)
    1 << (position - 1)
  end

  def self.valid_position?(position)
    position.positive? && position <= SQUARES_IN_CHESSBOARD
  end

  def self.square(position)
    validate_position(position)
    calculate_grains(position)
  end

  def self.total
    (1..SQUARES_IN_CHESSBOARD).reduce(0) { |sum, position| sum + calculate_grains(position) }
  end
end
