=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end
module Acronym
  def self.abbreviate(name)
    cleaned_name = name.gsub(/[^a-zA-Z0-9 ]/, ' ')
    words = cleaned_name.split
    acronym = words.map { |word| word[0].upcase }.join('')
    acronym
  end
end