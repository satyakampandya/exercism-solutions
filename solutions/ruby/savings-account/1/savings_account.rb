module SavingsAccount
  def self.interest_rate(balance)
    if (0...1000).include? balance
      0.5
    elsif (1000...5000).include? balance
      1.621
    elsif balance >= 5000
      2.475
    else
      3.213
    end
  end

  def self.annual_balance_update(balance)
    balance + (interest_rate(balance) / 100 * balance)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years_required = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years_required += 1
    end
    years_required
  end
end

puts SavingsAccount.annual_balance_update(1_000.0)
