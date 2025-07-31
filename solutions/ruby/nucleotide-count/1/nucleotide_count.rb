class Nucleotide
  EMPTY_HISTOGRAM = { "A" => 0, "C" => 0, "G" => 0, "T" => 0 }
  VALID_NUCLEOTIDES = /\A[#{EMPTY_HISTOGRAM.keys.join('')}]*\Z/

  attr_reader :strand

  def initialize(strand)
    raise ArgumentError unless strand =~ VALID_NUCLEOTIDES

    @strand = strand
  end

  def self.from_dna(strand)
    new(strand)
  end

  def histogram
    @histogram ||= EMPTY_HISTOGRAM.merge(strand.chars.sort.tally)
  end

   def count(nucleotide)
    histogram[nucleotide]
  end
end