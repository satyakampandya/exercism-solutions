module Grid
  def self.saddle_points(rows)
    columns = rows.transpose
    rows.each_with_index.inject([]) do |selected_trees, (row, row_index)|
      max_tree = row.max
      row.each_with_index do |tree, column_index|
        if tree === max_tree and tree === columns[column_index].min
          selected_trees << { "row" => row_index + 1, "column" => column_index + 1 }
        end
      end
      selected_trees
    end
  end
end
