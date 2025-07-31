class ResistorColorTrio
  BAND_COLOR_MAPPING = {
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }

  OHMS = 'ohms'.freeze
  KILOOHMS = 'kiloohms'.freeze

  attr_reader :resistance_value

  def initialize(colors)
    first, second, zeroes = colors.map { |color| BAND_COLOR_MAPPING[color.to_sym] }

    if first.nil? || second.nil? || zeroes.nil?
      raise ArgumentError, 'Invalid color band'
    end

    @resistance_value = "#{first}#{second}#{'0' * zeroes}".to_i
  end

  def label
    "Resistor value: #{formatted_value}"
  end

  private

  def formatted_value
    if resistance_value > 1000
      "#{resistance_value / 1000} #{KILOOHMS}"
    else
      "#{resistance_value} #{OHMS}"
    end
  end
end
