class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    num_array.sum**2
  end

  def sum_of_squares
    num_array.sum { |n| n**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private
  def num_array
    (1..@num)
  end
end

module BookKeeping
  VERSION = 4
end
