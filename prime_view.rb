class View
  def print_matrix(matrix)
    matrix.each do |row|
     puts row.join(" | ")
    end
  end
end