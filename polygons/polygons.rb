#Polygons (120 Points)
#Consider a regular polygon with N vertices labelled 1..N. In how many ways can you draw K diagonals such that no two diagonals intersect at a point strictly inside the polygon? A diagonal is a line segment joining two non adjacent vertices of the polygon.
#Input:
#The first line contains the number of test cases T. Each of the next T lines contain two integers N and K.
#Output:
#Output T lines, one corresponding to each test case. Since the answer can be really huge, output it modulo 1000003.
#Constraints:
#1 <= T <= 10000
#4 <= N <= 10^9
#1 <= K <= N
#Sample Input:
#3
#4 1
#5 2
#5 3
#Sample Output:
#2
#5
#0
#Explanation:
#For the first case, there are clearly 2 ways to draw 1 diagonal - 1 to 3, or 2 to 4. (Assuming the vertices are labelled 1..N in cyclic order).
#For the third case, at most 2 non-intersecting diagonals can be drawn in a 5-gon, and so the answer is 0.
class Integer
  def choose(k)
    return 0 if (k > self)
    n = self
    r = 1
    1.upto(k) do |d|
      r *= n
      r /= d
      n -= 1
    end
    return r
  end
end

def fact(n)
  (1..n).reduce(1, :*)
end

def diagonals sides
  ((sides**2) - (3 * sides)) / 2
end

def catalan n
  fact(2 * n) / (fact(n + 1) * fact(n))
end

class Catalan
  def initialize
    @memo = {}
  end

  def number(n)
    return 1 if n == 0

    @memo[n] ||= 2 * (2 * n - 1) * number(n-1) / (n+1)
  end
end

@cat = Catalan.new

def max_slices n
  @cat.number(n-3)
end

def combinations n
  @cat.number(n-2)
end

def c n, m
  if (n - m) == 3
    combinations n
  elsif m == 1
    diagonals n
  end
end

puts diagonals(10) % 1000003 # 35 diagonals, * ? 4 diags 143 = 5005 combinations
puts combinations(10) % 1000003 # 143 combinations per side
puts max_slices(10) % 1000003 # 143 combinations per side

puts diagonals(9) % 1000003 # 14 diagonals, * 1 side = 14 combinations
puts combinations(9) % 1000003 # 42 combinations per side
puts max_slices(9) % 1000003 # 42 combinations per side

puts max_slices 4
puts combinations 4

puts "RESULTS:"
puts c 9, 1
puts c 9, 2
puts c 9, 6

puts "RESULTS:"
puts c 10, 1
puts c 10, 2
puts c 10, 3 # 1925
puts c 10, 7 # 1430

puts "RESULTS:"
puts "RESULTS:"
puts c 11, 1 # 44
puts c 11, 2 # 616
puts c 11, 8 # 4862

puts c 10**3, 10**3-3

#1, 1, 2, 5, 14, 42, 132, 429, 1430, 4862, 16796, 58786, 208012, 742900, 2674440, 9694845, 35357670, 129644790, 477638700, 1767263190, 6564120420, 24466267020, 91482563640, 343059613650, 1289904147324, 4861946401452
# Test case:
t = 3
cases = [[4,1], [5,2], [5,3]]
#
#def num_combinations(vertices, diagonals)
#  4
#endz
#
#vertices:
#1
#2
#3
#4
#
#1
#2
#3
#4
#5
#
