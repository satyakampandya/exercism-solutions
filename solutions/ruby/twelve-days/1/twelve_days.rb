=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

module TwelveDays
  DAYS = {
    first: 'a Partridge in a Pear Tree.',
    second: 'two Turtle Doves',
    third: 'three French Hens',
    fourth: 'four Calling Birds',
    fifth: 'five Gold Rings',
    sixth: 'six Geese-a-Laying',
    seventh: 'seven Swans-a-Swimming',
    eighth: 'eight Maids-a-Milking',
    ninth: 'nine Ladies Dancing',
    tenth: 'ten Lords-a-Leaping',
    eleventh: 'eleven Pipers Piping',
    twelfth: 'twelve Drummers Drumming'
  }.freeze

  def self.song
    lines = []
    DAYS.map.with_index do |(day, line), index|
      if index.zero?
        lines.insert(0, "and #{line}")
        "On the #{day} day of Christmas my true love gave to me: #{line}\n"
      else
        lines.insert(0, line)
        "\nOn the #{day} day of Christmas my true love gave to me: #{lines.join(', ')}\n"
      end
    end.join
  end
end

