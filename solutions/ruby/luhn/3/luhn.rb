module Luhn
  NUMBERS_AND_SPACES_REGEX = /\A[\d\s]+\z/.freeze
  NON_DIGIT_CHARS_REGEX = /\D/.freeze

  def self.valid?(identification_number)
    return false unless identification_number.match?(NUMBERS_AND_SPACES_REGEX)

    filtered_numbers = identification_number.gsub(NON_DIGIT_CHARS_REGEX, '').chars
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
