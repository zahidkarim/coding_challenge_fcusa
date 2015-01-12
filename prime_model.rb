require 'pry'

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
    (2..@number).each do |num|
      if is_prime?(num) == true
        @primes << num
      end
    end
  end

  def is_prime?(number)
      return false if number == 1
      return true if number == 2
      i = 2
      while i < number
        return false if number % i == 0
        i += 1
      end
   true
  end

end