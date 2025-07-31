class Anagram
  def initialize(word)
    @word = word.downcase
    @letters = sorted_letters(@word)
  end

  def match(candidates)
    candidates.select { |candidate| anagram?(candidate) }
  end

  private

  attr_reader :word, :letters

  def anagram?(candidate)
    candidate_word = candidate.downcase
    different_word?(candidate_word) && sorted_letters(candidate_word) == letters
  end

  def different_word?(candidate)
    candidate != word
  end

  def sorted_letters(word)
    word.chars.sort
  end
end
