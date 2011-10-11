require 'pp'
# How many nodes have more than two non-leaf children?

class AdjMatrix
  # Initialize by matrix size
  def initialize n
    @matrix = Array.new(n){Array.new(n){0}}
    @unvisited = {}
    (0...n).each{|i| @unvisited[i] = true}
    @visited = {}
    @tabs = ""
  end

  def add_edge n1, n2
    @matrix[n1][n2] = 1
    @matrix[n2][n1] = 1
  end

  def add array
    @matrix[array[1]][array[0]] = 1
    @matrix[array[0]][array[1]] = 1
  end

  def is_edge? n1, n2
    @matrix[n1][n2] + @matrix[n2][n1] >= 2
  end

  def adjacent_to n
    adjacencies = []
    @matrix[n].each_with_index {|val, i| adjacencies << i if val > 0 }
    return adjacencies
  end

  def visit n
    @unvisited.delete(n)
  end

  def visited? n
    ! (@unvisited.has_key? n)
  end

  def delete n
    @matrix[n].map{|i| 0}
    @matrix.each{|a| a[n] = 0 }
  end

  def sum n
    @matrix[n].inject(:+)
  end

  def to_s
    returning = "  " + (0...@matrix.size).to_a.inject('') {|sum, n| sum += "#{n} " } + "\n"
    @matrix.each_with_index {|row, i| returning += "#{i} "; row.each {|col| returning += "#{col} " }; returning += "\n"}
    returning
  end

  def size
    @matrix.size
  end

  def putabs x
    puts "#{@tabs}#{x}"
  end
  
  def tree root
    bots = 0
    @visited[root] = true
    putabs "Looking at #{root}"; @tabs += " "

    children = adjacent_to root
    degree = children.size

    if children.empty?
    else
      bot_trips = 2

      children.each do |node|
        if adjacent_to(node).empty?
          putabs "#{node} is a leaf node"
          degree -= 1
        else
          bots += tree node unless @visited.include?(node)

          if bot_trips > 0
            bot_trips -= 1
          else
            bots += 1
            bot_trips += 1
          end
        end
      end
    end
    putabs "#{root} total: #{bots}"
    putabs "Bots trips: #{bots}"
    @tabs.chop!

    return bots
  end
end

class String
  # Converts string "0 1" to array [0, 1]
  def to_edge
    split.map{|x| x.to_i}
  end
end

a = AdjMatrix.new 21


test = "0 3
0 10
1 7
1 6
2 4
2 5
4 9
4 10
4 6
5 14
7 15
8 14
11 15
12 14
13 15
14 16"

test.split("\n").each do |item|
  a.add item.to_edge
end

a.size.times do |node|
  print "#{node} "
  pp a.adjacent_to node
end

pp a.sum 0

#pp a.botsplits

pp (a.tree 0)