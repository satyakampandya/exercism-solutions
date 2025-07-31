=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

module Raindrops
  def self.convert(number)
    sound = ''
    sound << 'Pling' if number % 3 == 0
    sound << 'Plang' if number % 5 == 0
    sound << 'Plong' if number % 7 == 0
    sound.empty? ? number.to_s : sound
  end
end