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

  attr_reader :colors, :multiplier

  def initialize(colors)
    @colors = colors
    @multiplier = 10 ** (BAND_COLOR_MAPPING[colors[2].to_sym])
  end

  def label
    "Resistor value: #{value_with_unit}"
  end

  private

  def value_with_unit
    if value > 1000
      "#{value / 1000} kiloohms"
    else
      "#{value} ohms"
    end
  end

  def value
    mapped_values = colors[0..1].map { |color| BAND_COLOR_MAPPING[color.to_sym] }
    mapped_values.join.to_i * multiplier
  end
end
