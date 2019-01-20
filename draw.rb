require_relative "FlatObject"

grid = Array.new(10) {Array.new(10)}
triangle = FlatObject.new(0,0)

triangle.addVertex(0,0)
triangle.addVertex(25,25)
triangle.connectVertices(triangle.vertices[0],triangle.vertices[1])

puts "Edge 1 has a length of #{triangle.edges[0].length} and it's increments are #{triangle.edges[0].xincrement} x places and #{triangle.edges[0].yincrement} y places."
puts "Edge 1 is #{triangle.edges[0].x_coors.length} coordinates long and it includes x coors:"
triangle.edges[0].x_coors.each do |x|
  puts x
end

puts "And it includes y coors:"
triangle.edges[0].y_coors.each do |y|
  puts y
end

def draw(grid)
  grid.each do |array|
    (array.length - 1).times do |i|
      if array[i] == nil
        print " "
      else
        print array[i]
      end
    end
    print "\n"
  end
end