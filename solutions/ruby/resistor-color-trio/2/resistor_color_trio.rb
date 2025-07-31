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

  attr_reader :resistance_value

  def initialize(colors)
    first, second, zeroes = colors.map {|color| BAND_COLOR_MAPPING[color.to_sym]}
    @resistance_value = "#{first}#{second}#{'0'*zeroes}".to_i
  end

  def label
    "Resistor value: #{value_with_unit}"
  end

  private

  def value_with_unit
    if resistance_value > 1000
      "#{resistance_value / 1000} kiloohms"
    else
      "#{resistance_value} ohms"
    end
  end
end
