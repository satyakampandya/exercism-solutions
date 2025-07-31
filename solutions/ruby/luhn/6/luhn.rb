class Luhn
  ONE_OR_MORE_DIGITS = /^\d{2,}$/

  attr_accessor :identification_number

  def initialize(identification_number)
    @identification_number = identification_number.delete(' ')
  end
  
  def self.valid?(identification_number)
    new(identification_number).valid?
  end

  def valid?
    return false unless valid_syntax?

    (checksum % 10).zero?
  end

  def valid_syntax?
    identification_number.match?(ONE_OR_MORE_DIGITS)
  end

  def process_number(number)
    value = number * 2
    value > 9 ? value - 9 : value
  end

  def checksum
    identification_number.reverse.each_char.with_index.sum do |number, index|
      number = number.to_i
      number = process_number(number) if index.odd?
      number
    end
  end
end