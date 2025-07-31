class Proverb
  def initialize(*chain, qualifier: nil)
    @chain = chain
    @qualifier = qualifier
  end

  def to_s
    chain.each_cons(2)
         .map { |first, second| "For want of a #{first} the #{second} was lost." }.join("\n")
         .concat("\nAnd all for the want of a #{qualifier} #{chain.first}.".squeeze(' '))
  end

  private

  attr_reader :chain, :qualifier
end
