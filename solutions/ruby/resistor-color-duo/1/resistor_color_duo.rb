=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end
module ResistorColorDuo
  BAND_COLOR_MAPPING = {
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue:6,
    violet: 7,
    grey: 8,
    white: 9
  }

  def self.value(colors)
    values = BAND_COLOR_MAPPING.fetch_values(colors[0].to_sym, colors[1].to_sym)
    values.join.to_i
  end
end