class Anagram

  def initialize(word)
    @word = word.downcase
    @letters = sorted_letters(@word)
  end

  def match(candidates)
    candidates.reject { |candidate| same_word?(candidate) }
              .select { |candidate| anagram?(candidate) }
  end

  private

  attr_reader :word, :letters

  def same_word?(candidate)
    word == candidate.downcase
  end

  def sorted_letters(word)
    word.chars.sort
  end

  def anagram?(candidate)
    letters == sorted_letters(candidate.downcase)
  end

end
