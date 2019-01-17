require_relative "FlatObject"

grid = Array.new(10) {Array.new(10)}
triangle = FlatObject.new(0,0)

triangle.addVertex(0,0)
triangle.addVertex(3,4)
triangle.connectVertices(triangle.vertices[0],triangle.vertices[1])

puts "Edge 1 has a length of #{triangle.edges[0].length} and it's increments are #{triangle.edges[0].xincrement} x places and #{triangle.edges[0].yincrement} y places."

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