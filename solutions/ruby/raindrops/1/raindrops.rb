=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

module Raindrops
  def self.convert(number)
    sounds = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
    sound = sounds.keys.map { |factor| sounds[factor] if (number % factor).zero? }.join
    sound.empty? ? number.to_s : sound
  end
end