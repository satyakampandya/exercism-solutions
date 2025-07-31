module Chess
  RANKS = (1..8)
  FILES = ('A'..'H')

  def self.valid_square?(rank, file)
    RANKS.include?(rank.to_i) && FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    "#{first_name[0..1]}#{last_name[-2..-1]}".upcase
  end

  def self.move_message(first_name, last_name, square)
    file, rank = square.chars
    is_attempted = !valid_square?(rank, file)
    nickname = nick_name(first_name, last_name)
    if is_attempted
      "#{nickname} attempted to move to #{square}, but that is not a valid square"
    else
      "#{nickname} moved to #{square}"
    end
  end
end
