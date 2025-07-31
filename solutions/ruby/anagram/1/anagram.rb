class Anagram
  def initialize(source_word)
    @source_word = source_word.downcase
    @source_sorted = sorted_chars(@source_word)
  end

  def match(words)
    source_length = source_word.length
    words.select do |word|
      next if word.length != source_length

      word = word.downcase
      next if word == source_word

      sorted_word = sorted_chars(word)
      sorted_word == source_sorted
    end
  end

  private

  attr_reader :source_word, :source_sorted

  def sorted_chars(word)
    word.chars.sort
  end
end
