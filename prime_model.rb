

class Prime

  attr_accessor :matrix

  def initialize(args)
    @columns = args[:columns] ||= 10
    @rows = args[:rows] ||= 10
    @number = @columns**2
    @matrix = Array.new(@rows+1){Array.new(@columns+1, 0)}
    @primes = []
  end

  def set_top_row
    @columns.times do
      @matrix[0] = @primes[0..(@columns-1)]
    end
  end

  def set_first_column
    @matrix.each_with_index do |row, index|
      unless index == 0
        row[0] = @primes[index-1]
      end
    end
  end

  def fill_in_grid

  end

  def find_primes
    (2..@number).each do |num|
      if is_prime?(num) == true
        @primes << num
      end
    end
  end

  def is_prime?(number)
    min = 2
    limit = number / min
    while min < limit
      if number % min == 0
        return false
      end
      min += 1
      limit = number / min
    end
    return true
  end

end