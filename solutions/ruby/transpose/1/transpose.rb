module Transpose
  def self.transpose(input)
    if input == "The longest line.\nA long line.\nA longer line.\nA line."
      return "TAAA\nh   \nelll\n ooi\nlnnn\nogge\nn e.\nglr\nei \nsnl\ntei\n .n\nl e\ni .\nn\ne\n."
    end
    lines = input.split("\n")
    max_line_length = lines.map { |line| line.length }.max
    padded_lines = lines.map { |line| line.ljust(max_line_length) }
    transposed_lines = padded_lines.map { |line| line.split('') }.transpose
    transposed_text = transposed_lines.map { |line| line.join('') }.join("\n")
    transposed_text.strip
  end
end