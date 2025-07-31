class Change
  class ImpossibleCombinationError < StandardError; end

  class NegativeTargetError < StandardError; end

  def self.generate(coins, amount)
    raise NegativeTargetError, 'Amount cannot be negative' if amount.negative?
    return [] if amount.zero?

    (1..amount).each do |i|
      coins.repeated_combination(i).each { |changes| return changes if changes.sum == amount }
    end

    raise ImpossibleCombinationError, 'Impossible to generate change with the given set of coins for the specified amount'
  end
end
