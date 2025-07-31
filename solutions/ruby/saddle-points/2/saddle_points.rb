module Grid
  def self.saddle_points(rows)
    columns = rows.transpose
    saddle_points = []

    rows.each_with_index do |row, row_index|
      row_max = row.max

      row.each_with_index do |tree, column_index|
        if tree == row_max && tree == columns[column_index].min
          saddle_points << { "row" => row_index + 1, "column" => column_index + 1 }
        end
      end
    end

    saddle_points
  end
end
