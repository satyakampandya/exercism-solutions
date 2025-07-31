class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(number)
    (1...number).sum { |n| multiple?(n) ? n : 0 }
  end

  private

  attr_reader :multiples

  def multiple?(n)
    multiples.any? { |m| n % m == 0 }
  end
end
