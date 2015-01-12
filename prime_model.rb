
class Prime

  def initialize(args)
    @columns = args[:columns] ||= 10
    @rows = args[:rows] ||= 10
    p @columns
    p @rows
  end
end