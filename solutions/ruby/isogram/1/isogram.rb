=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

module Isogram
  def self.isogram?(input)
    clean_input = input.downcase.delete('-').delete(' ')
    clean_input.chars.uniq.length == clean_input.length
  end
end