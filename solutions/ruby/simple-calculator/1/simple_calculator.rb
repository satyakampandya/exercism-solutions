class SimpleCalculator
  class UnsupportedOperation < StandardError
  end
    
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise SimpleCalculator::UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError if first_operand.class == String or second_operand.class == String

    "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
  rescue ZeroDivisionError
    "Division by zero is not allowed."
  end
end
