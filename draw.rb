require_relative "FlatObject"

grid = Array.new(10) {Array.new(10)}
triangle = FlatObject.new(0,0)

triangle.addVertex(0,0)
triangle.addVertex(2,0)
triangle.addVertex(1,1)
triangle.connectVertices(triangle.vertices[0],triangle.vertices[1])
triangle.connectVertices(triangle.vertices[1],triangle.vertices[2])
triangle.connectVertices(triangle.vertices[2],triangle.vertices[0])

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