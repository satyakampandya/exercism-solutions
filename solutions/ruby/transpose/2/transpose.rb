module Transpose
  def self.transpose(input)
    lines = input.split("\n")
    line_lengths = lines.map(&:length)
    max_line_length = line_lengths.max || 0
    padded_lines = lines.map.with_index do |line, index|
      line.ljust(line_lengths.slice(index..).max)
    end
    output = max_line_length.times.map.inject([]) do |arr, i|
      arr << padded_lines.map { |line| line[i] }.join('')
    end
    output.join("\n").strip
  end
end
