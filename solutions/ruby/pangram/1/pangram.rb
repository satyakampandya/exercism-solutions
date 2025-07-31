module Pangram
  LOWER_CASE_ALPHABET_REGEX = /[a-z]/

  def self.pangram?(sentence)
    return false if sentence.nil?

    sentence.downcase.scan(LOWER_CASE_ALPHABET_REGEX).uniq.size == 26
  end
end
