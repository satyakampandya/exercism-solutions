class Luhn
  ONE_OR_MORE_DIGITS = /^\d{2,}$/

  def self.valid?(identification_number)
    new(identification_number).valid?
  end

  def initialize(identification_number)
    @identification_number = identification_number.delete(' ').reverse
  end

  def valid?
    return false unless valid_syntax?

    (checksum % 10).zero?
  end

  private

  attr_accessor :identification_number

  def valid_syntax?
    identification_number.match?(ONE_OR_MORE_DIGITS)
  end

  def double_and_reduce(number)
    value = number * 2
    value > 9 ? value - 9 : value
  end

  def checksum
    identification_number.each_char.with_index.sum do |number, index|
      number = number.to_i
      number = double_and_reduce(number) if index.odd?
      number
    end
  end
end
