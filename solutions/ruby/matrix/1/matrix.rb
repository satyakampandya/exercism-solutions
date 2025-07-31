=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  def initialize(elements)
    @elements = elements.split("\n").map(&:split)
  end

  def row(index)
    @elements[index-1].map(&:to_i)
  end

  def column(index)
    @elements.map { |row| row[index-1].to_i }
  end
end