=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

module Hamming
  def self.compute(first_strand, second_strand)
    raise ArgumentError unless first_strand.length == second_strand.length
    return 0 if first_strand == second_strand

    differences = 0
    first_strand.chars.each_with_index do |char, index|
      differences += 1 if char != second_strand[index]
    end

    differences
  end
end