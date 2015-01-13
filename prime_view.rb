class View
    attr_accessor :matrix

  def initialize(matrix)
    @matrix = matrix
    @max_length = matrix.last.last.to_s.length
  end

  def space
    matrix.each do |row|
      pad(row)
    end
  end

  def pad(row)
    row.map! do |number|
      number = padding_padder(number.to_s)
    end
  end

  def padding_padder(string)
    until string.length == @max_length
      string << " "
    end
    return string
  end

  def print_screen
    matrix.each do |row|
      puts row. join " | "
    end
  end

end