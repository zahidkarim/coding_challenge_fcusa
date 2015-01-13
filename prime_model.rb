require 'matrix'

class Prime

  attr_accessor :matrix

  def initialize(args)
    @columns = args[:columns].to_i ||= 10
    @rows = args[:rows].to_i ||= 10
    @matrix = Array.new(@rows+1){Array.new(@columns+1, 0)}
    @primes = [2]
  end

  def set_top_row
    @columns.times do
      @matrix[0] = @primes[0..(@columns-1)]
    end
    @matrix[0].insert(0,0)
  end

  def set_first_column
    @matrix.each_with_index do |row, index|
      unless index == 0
        row[0] = @primes[index-1]
      end
    end
  end

  def fill_in_grid
    @matrix.each_with_index do |row, index|
      unless index == 0
        row.each_with_index do |number, position|
          unless position == 0
            row[position] = @matrix[0][position]*row[0]
          end
        end
      end
    end
  end

  def find_primes
    num = 3
    until @primes.count == @columns do
      @primes << num if is_prime?(num) == true
      num += 2
    end
  end

  def is_prime?(number)
      return false if number == 1
      return true if number == 2
      min = 2
      while min < number
        return false if number % min == 0
        min += 1
      end
   true
  end

end