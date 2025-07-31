module CollatzConjecture
  def self.steps(number)
    raise ArgumentError if number < 1

    steps = 0
    while number > 1
      number = if number.odd?
                 (number * 3) + 1
               else
                 number / 2
               end
      steps += 1
    end
    steps
  end
end