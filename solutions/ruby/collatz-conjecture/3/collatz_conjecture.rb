module CollatzConjecture
  def self.steps(number)
    # Check if the input number is zero and raise an exception
    raise ArgumentError, "cannot be zero" if number.zero?

    # Check if the input number is negative and raise an exception
    raise ArgumentError, "cannot be negative" if number.negative?

    steps = 0
    # Continue the loop until the number reaches 1
    until number == 1
      # If the number is odd, apply the Collatz formula for odd numbers
      if number.odd?
        number = (number * 3) + 1
      else
        # If the number is even, divide it by 2
        number = number / 2
      end
      steps += 1
    end
    # Return the number of steps taken
    steps
  end
end
