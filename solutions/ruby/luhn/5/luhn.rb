module Luhn
  ONE_OR_MORE_DIGITS = /^\d{2,}$/.freeze

  def self.valid?(identification_number)
    identification_number.delete!(' ')

    return false unless identification_number.match?(ONE_OR_MORE_DIGITS)

    checksum = identification_number.reverse.each_char.with_index.sum do |number, index|
      number = number.to_i
      number = process_number(number) if index.odd?
      number
    end

    (checksum % 10).zero?
  end

  def self.process_number(number)
    value = number * 2
    value > 9 ? value - 9 : value
  end
end
