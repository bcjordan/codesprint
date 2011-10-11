require 'pp'

class Array
  # Returns the number of swaps a canonical insertion sort
  # would perform to sort this array of integers
  def swap_count
    list = self.dup # Make defensive list copy
    swap_total = 0

    (0 ... list.size).each do |i|
      j = i
      while j > 0 and list[j] < list[j - 1]
        swap_temp   = list[j]
        list[j]     = list[j - 1]
        list[j - 1] = swap_temp
        swap_total += 1

        j = j - 1
      end
    end

    pp list
    swap_total
  end

  def diff(other_array)
    zip(other_array).inject(0){ |total, pair| total += pair[0] == pair[1] ? 0 : 1 }
  end
end

class String
  def to_int_array
    split(' ').collect{ |x| x.to_i }
  end
end

# Parse lines from stdin, print insertion sort swap counts
count = gets.to_i
examples = []

count.times do
  gets # Ignore count line
  examples << gets.to_int_array
end

examples.each{ |example| puts example.swap_count}