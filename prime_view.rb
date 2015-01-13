class View
  def initialize(matrix)
    matrix.each do |row|
     puts row.join(" | ")
    end
  end
end