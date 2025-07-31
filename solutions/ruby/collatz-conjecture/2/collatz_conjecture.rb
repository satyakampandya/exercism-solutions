module CollatzConjecture
  def self.steps(number)
    raise ArgumentError, "cannot be zero" if number.zero?
    raise ArgumentError, "cannot be negative" if number.negative?

    steps = 0
    until number == 1
      number = number.odd? ? (number * 3) + 1 : number / 2
      steps += 1
    end
    steps
  end
end