

class Prime

  def initialize(args)
    @columns = args[:columns] ||= 10
    @rows = args[:rows] ||= 10
    @number = @columns**2
    @matrix = Array.new(@rows){Array.new(@columns, 0)}
    @primes = []
  end

  def create_grid_array

  end

  def find_primes
    (2..@number).each do |num|
      if is_prime?(num) == true
        @primes << num
      end
    end
  end

  def is_prime?(number)

    if number == 0 or number == 1
      return false
    end

    i = 2
    limit = number / i
    while i < limit
      if number % i == 0
        return false
      end
      i += 1
      limit = number / i
    end
    return true
  end

end