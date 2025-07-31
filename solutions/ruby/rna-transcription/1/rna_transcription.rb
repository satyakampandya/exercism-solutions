module Complement
  DNA = 'CATG'.freeze
  RNA = 'GUAC'.freeze

  def self.of_dna(strand_string)
    strand_string.tr(DNA, RNA)
  end
end
