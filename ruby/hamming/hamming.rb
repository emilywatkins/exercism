class Hamming
  def self.compute(a,b)
    raise ArgumentError if a.length != b.length
    distance = 0;

    a_array = a.split('')
    b_array = b.split('')

    compared = a_array.zip(b_array).map { |a, b| a == b }
    counts = Hash.new(0)
    compared.each { |item| counts[item] += 1 }
    distance = counts[false]
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
