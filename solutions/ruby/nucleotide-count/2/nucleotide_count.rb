class Nucleotide
  EMPTY_HISTOGRAM = { "A" => 0, "C" => 0, "G" => 0, "T" => 0 }
  VALID_NUCLEOTIDES = Set.new(EMPTY_HISTOGRAM.keys)

  attr_reader :strand

  def initialize(strand)
    raise ArgumentError unless valid_strand?(strand)

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

  private

  def valid_strand?(strand)
    strand.chars.all? { |n| VALID_NUCLEOTIDES.include?(n) }
  end
end
