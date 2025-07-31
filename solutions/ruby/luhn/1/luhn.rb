=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

module Luhn
  def self.valid?(numbers)
    return false unless numbers.match?(/\A[\d\s]+\z/)

    filtered_numbers = numbers.gsub(/\D/, '').chars
    return false if filtered_numbers.length <= 1

    reversed_numbers = filtered_numbers.reverse
    filtered_numbers.each_with_index do |number, index|
      if index.odd?
        value = number.to_i * 2
        filtered_numbers[index] = value > 9 ? value - 9 : value
      end
    end

    reversed_numbers.each_with_index do |number, index|
      if index.odd?
        value = number.to_i * 2
        reversed_numbers[index] = value > 9 ? value - 9 : value
      end
    end

    (filtered_numbers.map(&:to_i).sum % 10).zero? || (reversed_numbers.map(&:to_i).sum % 10).zero?
  end
end
