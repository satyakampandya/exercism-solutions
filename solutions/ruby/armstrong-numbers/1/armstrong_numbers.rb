module ArmstrongNumbers
  def self.include?(number)
    armstrong?(number)
  end

  def self.armstrong?(number)
    digits = number.digits
    power = digits.size

    number == digits.sum { |digit| digit**power }
  end
end
